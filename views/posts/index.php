<table style="margin-left: auto;margin-right: auto;">
  <caption>
    Here is a list of all CPTs
  </caption>
  <tfoot>  
      <td colspan=2>
          <?php echo count($cpts); ?> records
      </td>
  </tfoot>
  <?php if (count($cpts)) foreach($cpts as $cpt) { ?>
  <tbody>
    <tr>
      <td>
        <a href='?controller=posts&action=show&id=<?php echo $cpt->id; ?>'>View</a>
      </td>
      <td>
        <?php echo $cpt->ref_code; ?>
      </td>
      <td>
        <?php echo $cpt->display_code; ?>
      </td>
      <td>
        <?php echo $cpt->short_description; ?>
      </td>
      <td>
        <?php echo $cpt->display_description; ?>
      </td>
      <td>
        <?php echo $cpt->duration; ?>
      </td>
      <td>
        <?php echo $cpt->units; ?>
      </td>
      <td>
        <?php echo $cpt->body_part; ?>
      </td>
      <td>
        <?php echo $cpt->notes; ?>
      </td>
    </tr>
  </tbody>
  <?php } ?>
</table>
