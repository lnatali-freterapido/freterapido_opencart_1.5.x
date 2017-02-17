<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/shipping.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <div>
        <div style="padding:15px;text-align: center; vertical-align:bottom;">
          <a href="http://www.freterapido.com" target="_blank">
            <img src="https://freterapido.com/imgs/frete_rapido.png" style="margin: auto" />
          </a>
          <div style="padding-top: 20px;">
            Configure abaixo a sua conta com os dados da loja para obter as cotações de frete através do Frete Rápido.
            </br>
            O token e as configurações dos Correios estão disponíveis no seu <a href="https://freterapido.com/painel/" target="_blank"<name />Painel administrativo</a>.
            </br>
            Em caso de dúvidas, reporte de bugs ou sugestão de melhorias, acesse a <a href="https://github.com/freterapido/freterapido_magento" target="_blank"<name />documentação deste módulo no Github</a>.
            </br>
          </div>
        </div>
      </div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td>
              <label for="input-status"><?php echo $entry_status; ?>:</label>
            </td>
            <td>
              <select name="freterapido_status" id="input-status" class="form-control">
                <?php if ($freterapido_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </td>
          </tr>
          <tr>
            <td>
              <span class="required">*</span>
              <label for="input-cnpj"><?php echo $entry_cnpj; ?>:</label>
              <span class="help">
                <?php echo $help_cnpj; ?>
              </span>
            </td>
            <td>
              <input type="text" name="freterapido_cnpj" value="<?php echo $freterapido_cnpj; ?>" placeholder="<?php echo $entry_cnpj; ?>" id="input-cnpj" />
              <?php if ($error_cnpj) { ?>
              <span class="error"><?php echo $error_cnpj; ?></span>
              <?php } ?>
            </td>
          </tr>
          <tr>
            <td><label for="input-results"><?php echo $entry_results; ?>:</label></td>
            <td>
              <select name="freterapido_results" id="input-results">
                <option value="0" <?php echo $freterapido_results == 0 ? 'selected="selected"' : '' ?>>
                <?php echo $text_results_nofilter; ?>
                </option>
                <option value="1" <?php echo $freterapido_results == 1 ? 'selected="selected"' : '' ?>>
                <?php echo $text_results_cheaper; ?>
                </option>
                <option value="2" <?php echo $freterapido_results == 2 ? 'selected="selected"' : '' ?>>
                <?php echo $text_results_faster; ?>
                </option>
              </select>
            </td>
          </tr>
          <tr>
            <td><label for="input-limit"><?php echo $entry_limit; ?>:</label></td>
            <td>
              <input type="number" min="0" max="20" step="1" value="<?php echo $freterapido_limit; ?>" placeholder="<?php echo $entry_limit; ?>" name="freterapido_limit" id="input-limit">
            </td>
          </tr>
          <tr>
            <td>
              <label for="input-post-deadline"><?php echo $entry_post_deadline; ?>:</label>
            </td>
            <td>
              <input type="number" min="0" name="freterapido_post_deadline" value="<?php echo $freterapido_post_deadline; ?>" placeholder="<?php echo $entry_post_deadline; ?>" id="input-post-deadline" />
              <span class="help">
                <?php echo $help_post_deadline; ?>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <label for="input-post-cost"><?php echo $entry_post_cost; ?>:</label>
            </td>
            <td>
              <input type="number" min="0" step="0.1" name="freterapido_post_cost" value="<?php echo $freterapido_post_cost; ?>" placeholder="<?php echo $entry_post_cost; ?>" id="input-post-cost" class="form-control" />
              <span class="help">
                <?php echo $help_post_cost; ?>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <label for="input-additional-percentage"><?php echo $entry_additional_percentage; ?>:</label>
            </td>
            <td>
              <input type="number" min="0" step="0.1" name="freterapido_additional_percentage" value="<?php echo $freterapido_additional_percentage; ?>" placeholder="<?php echo $entry_additional_percentage; ?>" id="input-additional-percentage" class="form-control" />
              <span class="help">
                <?php echo $help_additional_percentage; ?>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <label for="lenght"><?php echo $entry_dimension; ?></label>
              <span class="help">
                <?php echo $help_dimension; ?>
              </span>
            </td>
            <td>
              <input type="text" name="freterapido_length" id="lenght" value="<?php echo $freterapido_length; ?>" size="5" />
              <input type="text" name="freterapido_width" id="width" value="<?php echo $freterapido_width; ?>" size="5" />
              <input type="text" name="freterapido_height" id="height" value="<?php echo $freterapido_height; ?>" size="5" />
              <span class="help">
                <?php echo $help_dimension_unit; ?>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <span class="required">*</span>
              <label for="input-token"><?php echo $entry_freterapido_token; ?>:</label>
              <span class="help">
                <?php echo $help_freterapido_token; ?>
              </span>
            </td>
            <td>
              <input type="text" name="freterapido_token" value="<?php echo $freterapido_token; ?>" placeholder="<?php echo $entry_freterapido_token_code; ?>" id="input-token" class="form-control" />
              <?php if ($error_token) { ?>
              <span class="error"><?php echo $error_token; ?></span>
              <?php } ?>
            </td>
          </tr>
          <tr>
            <td>
              <label for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            </td>
            <td>
              <input type="text" name="freterapido_sort_order" value="<?php echo $freterapido_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" />
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript" src="view/javascript/maskedinput/jquery.maskedinput.min.js"></script>
<script>
    jQuery(function($){
        $("#input-cnpj").mask("99.999.999/9999-99");
    });
</script>
<?php echo $footer; ?>
