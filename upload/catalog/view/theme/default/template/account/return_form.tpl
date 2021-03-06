<?php echo $header; ?>
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
<?php if ($error_warning) { ?>
<div class="alert alert-danger"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="row"><?php echo $column_left; ?>
  <div id="content" class="span9"> <?php echo $content_top; ?>
    <h1><?php echo $heading_title; ?></h1>
    <p><?php echo $text_description; ?></p>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <fieldset>
        <legend><?php echo $text_order; ?></legend>
        <div class="form-group required">
          <label class="col-lg-3 control-label" for="input-firstname"><?php echo $entry_firstname; ?></label>
          <div class="col-lg-9">
            <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" />
            <?php if ($error_firstname) { ?>
            <div class="error"><?php echo $error_firstname; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-lg-3 control-label" for="input-lastname"><?php echo $entry_lastname; ?></label>
          <div class="col-lg-9">
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" />
            <?php if ($error_lastname) { ?>
            <div class="error"><?php echo $error_lastname; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-lg-3 control-label" for="input-email"><?php echo $entry_email; ?></label>
          <div class="col-lg-9">
            <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" />
            <?php if ($error_email) { ?>
            <div class="error"><?php echo $error_email; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-lg-3 control-label" for="input-telephone"><?php echo $entry_telephone; ?></label>
          <div class="col-lg-9">
            <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" />
            <?php if ($error_telephone) { ?>
            <div class="error"><?php echo $error_telephone; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-lg-3 control-label" for="input-order-id"><?php echo $entry_order_id; ?></label>
          <div class="col-lg-9">
            <input type="text" name="order_id" value="<?php echo $order_id; ?>" placeholder="<?php echo $entry_order_id; ?>" id="input-order-id" />
            <?php if ($error_order_id) { ?>
            <div class="error"><?php echo $error_order_id; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label" for="input-date-ordered"><?php echo $entry_date_ordered; ?></label>
          <div class="col-lg-9">
            <input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" placeholder="<?php echo $entry_date_ordered; ?>" id="input-date-ordered" class="date" />
          </div>
        </div>
      </fieldset>
      <fieldset>
        <legend><?php echo $text_product; ?></legend>
        <div class="form-group required">
          <label class="col-lg-3 control-label" for="input-product"><?php echo $entry_product; ?></label>
          <div class="col-lg-9">
            <input type="text" name="product" value="<?php echo $product; ?>" placeholder="<?php echo $entry_product; ?>" id="input-product" />
            <?php if ($error_product) { ?>
            <div class="error"><?php echo $error_product; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-lg-3 control-label" for="input-model"><?php echo $entry_model; ?></label>
          <div class="col-lg-9">
            <input type="text" name="model" value="<?php echo $model; ?>" placeholder="<?php echo $entry_model; ?>" id="input-model" />
            <?php if ($error_model) { ?>
            <div class="error"><?php echo $error_model; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label" for="input-quantity"><?php echo $entry_quantity; ?></label>
          <div class="col-lg-9">
            <input type="text" name="quantity" value="<?php echo $quantity; ?>" placeholder="<?php echo $entry_quantity; ?>" id="input-quantity" />
          </div>
        </div>
        <div class="form-group required">
          <label class="col-lg-3 control-label"><?php echo $entry_reason; ?></label>
          <div class="col-lg-9">
            <?php foreach ($return_reasons as $return_reason) { ?>
            <?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>
            <label class="radio">
              <input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" checked="checked" />
              <?php echo $return_reason['name']; ?></label>
            <?php } else { ?>
            <label class="radio">
              <input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" />
              <?php echo $return_reason['name']; ?></label>
            <?php  } ?>
            <?php  } ?>
            <?php if ($error_reason) { ?>
            <div class="error"><?php echo $error_reason; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-lg-3 control-label"><?php echo $entry_opened; ?></label>
          <div class="col-lg-9">
            <label class="radio">
              <?php if ($opened) { ?>
              <input type="radio" name="opened" value="1" checked="checked" />
              <?php } else { ?>
              <input type="radio" name="opened" value="1" />
              <?php } ?>
              <?php echo $text_yes; ?></label>
            <label class="radio">
              <?php if (!$opened) { ?>
              <input type="radio" name="opened" value="0" checked="checked" />
              <?php } else { ?>
              <input type="radio" name="opened" value="0" />
              <?php } ?>
              <?php echo $text_no; ?></label>
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label" for="input-comment"><?php echo $entry_fault_detail; ?></label>
          <div class="col-lg-9">
            <textarea name="comment" rows="10" placeholder="<?php echo $entry_fault_detail; ?>" id="input-comment" class="input-xxlarge"><?php echo $comment; ?></textarea>
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
          <div class="col-lg-9">
            <input type="text" name="captcha" value="<?php echo $captcha; ?>" placeholder="<?php echo $entry_captcha; ?>" id="input-captcha" />
            <br />
            <img src="index.php?route=account/return/captcha" alt="" />
            <?php if ($error_captcha) { ?>
            <div class="error"><?php echo $error_captcha; ?></div>
            <?php } ?>
          </div>
        </div>
      </fieldset>
      <?php if ($text_agree) { ?>
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>
        <div class="pull-right"><?php echo $text_agree; ?>
          <?php if ($agree) { ?>
          <input type="checkbox" name="agree" value="1" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="agree" value="1" />
          <?php } ?>
          <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
        </div>
      </div>
      <?php } else { ?>
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>
        <div class="pull-right">
          <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
        </div>
      </div>
      <?php } ?>
    </form>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
});
//--></script> 
<?php echo $footer; ?> 