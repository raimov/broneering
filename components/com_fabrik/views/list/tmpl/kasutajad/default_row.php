<?php
/**
 * Fabrik List Template: Admin Row
 *
 * @package     Joomla
 * @subpackage  Fabrik
 * @copyright   Copyright (C) 2005-2013 fabrikar.com - All rights reserved.
 * @license     GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

// No direct access
defined('_JEXEC') or die('Restricted access');
	$userIds = array(194,193);
	$db = JFactory::getDbo();
			$query = $db->getQuery(true);

			// Join over the group mapping table.
			$query->select('map.user_id, COUNT(map.group_id) AS group_count')
				->from('#__user_usergroup_map AS map')
				->where('map.user_id IN (' . implode(',', $userIds) . ')')
				->group('map.user_id')
				// Join over the user groups table.
				->join('LEFT', '#__usergroups AS g2 ON g2.id = map.group_id');

			$db->setQuery($query);

			// Load the counts into an array indexed on the user id field.
			try
			{
				$userGroups = $db->loadObjectList('user_id');
			}
			catch (RuntimeException $e)
			{
				$this->setError($e->getMessage());

				return false;
			}		

?>
<tr id="<?php echo $this->_row->id;?>" class="<?php echo $this->_row->class;?>">
	<?php foreach ($this->headings as $heading => $label) {
		$style = empty($this->cellClass[$heading]['style']) ? '' : 'style="'.$this->cellClass[$heading]['style'].'"';
		?>
		<td class="<?php echo $this->cellClass[$heading]['class']?>" <?php echo $style?>>
			<?php if($label == "block"){
				if(@$this->_row->data->$heading == 0){ ?>
					<i class="icon-publish"></i>
				<?php }
				if(@$this->_row->data->$heading != 0){ ?>
				<i class="icon-unpublish"></i>
				<?php }
			}else if ($label == "group id"){
				$group_id = (int)@$this->_row->data->$heading;
				$db2 = JFactory::getDbo();
				$query2 = $db2->getQuery(true);
 
				$query2="select * from j8sdv_usergroups where id = ".$group_id;
 
				$db2->setQuery($query2);
 
				$row2 = $db2->LoadObject();
				echo $row2->title;
				
		
			}

			else{?>
			<?php echo @$this->_row->data->$heading;
			}
			?>
		
		</td>
	<?php }?>
</tr>