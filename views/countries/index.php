<table style="margin-left: auto;margin-right: auto;">
  <caption>
    Here is a list of all Coutries
  </caption>
  <tfoot>  
      <td colspan=2>
          <?php echo count($countries); ?> records
      </td>
  </tfoot>
  <?php if (count($countries)) foreach($countries as $country) { ?>
  <tbody>
    <tr>
      <td>
        <a href='?controller=countries&action=show&id=<?php echo $country->countryid; ?>'>View</a>
      </td>
      <td>
        <?php echo $country->countrycode; ?>
      </td>
      <td>
        <?php echo $country->countryname; ?>
      </td>
      <td>
        <?php echo $country->nationality; ?>
      </td>
    </tr>
  </tbody>
  <?php } ?>
</table>
