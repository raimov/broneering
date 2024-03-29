<?php
/**
 * Determines if a row is editable
 *
 * @package     Joomla.Plugin
 * @subpackage  Fabrik.list.caneditrow
 * @copyright   Copyright (C) 2005-2013 fabrikar.com - All rights reserved.
 * @license     GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

// No direct access
defined('_JEXEC') or die('Restricted access');

// Require the abstract plugin class
require_once COM_FABRIK_FRONTEND . '/models/plugin-list.php';

/**
 *  Determines if a row is editable
 *
 * @package     Joomla.Plugin
 * @subpackage  Fabrik.list.caneditrow
 * @since       3.0
 */

class PlgFabrik_ListCaneditrow extends PlgFabrik_List
{
	protected $acl = array();
	/**
	 * Can the plug-in select list rows
	 *
	 * @return  bool
	 */

	public function canSelectRows()
	{
		return false;
	}

	/**
	 * Can the row be edited
	 *
	 * @param   object  $row  Current row to test
	 *
	 * @return boolean
	 */

	public function onCanEdit($row)
	{
		$params = $this->getParams();

		// If $row is null, we were called from the list's canEdit() in a per-table rather than per-row context,
		// and we don't have an opinion on per-table edit permissions, so just return true.
		if (is_null($row) || is_null($row[0]))
		{
			return true;
		}

		if (is_array($row[0]))
		{
			$data = JArrayHelper::toObject($row[0]);
		}
		else
		{
			$data = $row[0];
		}

		/**
		 * If __pk_val is not set or empty, then we've probably been called from somewhere in form processing,
		 * and this is a new row.  In which case this plugin cannot offer any opinion!
		 */
		if (!isset($data->__pk_val) || empty($data->__pk_val))
		{
			return true;
		}

		$field = str_replace('.', '___', $params->get('caneditrow_field'));

		// If they provided some PHP to eval, we ignore the other settings and just run their code
		$caneditrow_eval = $params->get('caneditrow_eval', '');

		// $$$ rob if no can edit field selected in admin return true
		if (trim($field) == '' && trim($caneditrow_eval) == '')
		{
			$this->acl[$data->__pk_val] = true;

			return true;
		}

		if (!empty($caneditrow_eval))
		{
			$w = new FabrikWorker;
			$data = JArrayHelper::fromObject($data);
			$caneditrow_eval = $w->parseMessageForPlaceHolder($caneditrow_eval, $data);
			$caneditrow_eval = @eval($caneditrow_eval);
			FabrikWorker::logEval($caneditrow_eval, 'Caught exception on eval in can edit row : %s');
			$this->acl[$data['__pk_val']] = $caneditrow_eval;

			return $caneditrow_eval;
		}
		else
		{
			// No PHP given, so just do a simple match on the specified element and value settings.
			if ($params->get('caneditrow_useraw', '0') == '1')
			{
				$field .= '_raw';
			}

			$value = $params->get('caneditrow_value');
			$operator = $params->get('operator', '=');

			if (is_object($data->$field))
			{
				$data->$field = JArrayHelper::fromObject($data->$field);
			}

			switch ($operator)
			{
				case '=':
				default:
					$return = is_array($data->$field) ? in_array($value, $data->$field) : $data->$field == $value;
					break;
				case "!=":
					$return = is_array($data->$field) ? !in_array($value, $data->$field) : $data->$field != $value;
					break;
			}

			$this->acl[$data->__pk_val] = $return;

			return $return;
		}
	}

	/**
	 * Get the parameter name that defines the plugins acl access
	 *
	 * @return  string
	 */

	protected function getAclParam()
	{
		return 'caneditrow_access';
	}

	/**
	 * Return the javascript to create an instance of the class defined in formJavascriptClass
	 *
	 * @param   array  $args  Array [0] => string table's form id to contain plugin
	 *
	 * @return bool
	 */

	public function onLoadJavascriptInstance($args)
	{
		parent::onLoadJavascriptInstance($args);
		$opts = $this->getElementJSOptions();
		$opts->acl = $this->acl;
		$opts = json_encode($opts);
		$this->jsInstance = "new FbListCanEditRow($opts)";

		return true;
	}
}
