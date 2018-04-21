<div class="container border-top border-left">
<form action="?controller=countries&action=index&page=<?php echo $countries->page; ?>" method="POST" class="form-main">
    <div class="row">
        <div class="col border-bottom border-right">
        </div>
        <div class="col border-bottom border-right">
            <div class="input-group">
				<input type="text" class="form-control" placeholder="Code" name="code" value='<?php echo $countries->countrycode; ?>' />
				<button type="submit" class="input-group-append input-group-text">
					&#9935;
				</button>
			</div>
        </div>
        <div class="col border-bottom border-right">
            <div class="input-group">
				<input type="text" class="form-control" placeholder="Name" name="name" value='<?php echo $countries->countryname; ?>' />
				<button type="submit" class="input-group-append input-group-text">
					&#9935;
				</button>
			</div>
        </div>
        <div class="col border-bottom border-right">
            <div class="input-group">
				<input type="text" class="form-control" placeholder="Nationality" name="nationality" value='<?php echo $countries->nationality; ?>' />
				<button type="submit" class="input-group-append input-group-text">
					&#9935;
				</button>
			</div>
        </div>
    </div> 
<?php foreach($countries->list as $country) { ?>
  <div class="row">
    <div class="col border-bottom border-right">
        <a href='?controller=countries&action=show&id=<?php echo $country->countryid; ?>'>View</a>
    </div>
    <div class="col border-bottom border-right">
        <?php echo $country->countrycode; ?>
    </div>
    <div class="col border-bottom border-right">
        <?php echo $country->countryname; ?>
    </div>
    <div class="col border-bottom border-right">
        <?php echo $country->nationality; ?>
    </div>
  </div> 
<?php } ?>
<?php echo getFooter($countries, 'countries', 'index'); ?>
</div>
</form>