<?php
/**
 * Bootstrap Form Template: Group Labels Side
 *
 * @package     Joomla
 * @subpackage  Fabrik
 * @copyright   Copyright (C) 2005-2013 fabrikar.com - All rights reserved.
 * @license     GNU/GPL http://www.gnu.org/copyleft/gpl.html
 * @since       3.0
 */

// No direct access
defined('_JEXEC') or die('Restricted access');

$element = $this->element;
?>

<?php 
echo $element->label;?>

<div class="controls">
	<?php if ($this->tipLocation == 'above') : ?>
		<span class=""><?php echo $element->tipAbove ?></span>
	<?php endif ?>

	<div class="fabrikElement">
		<?php echo $element->element;?>
	</div><!-- end fabrikElement -->

	<div class="<?php echo $this->class?>">
		<?php echo $element->error ?>
	</div><!-- end element error -->

	<?php if ($this->tipLocation == 'side') : ?>
		<span class=""><?php echo $element->tipSide ?></span>
	<?php endif ?>

</div><!--  end controls -->

<?php if ($this->tipLocation == 'below') :?>
	<span class=""><?php echo $element->tipBelow ?></span><!--  end  -->
<?php endif ?>
