<form action="index.php?controller=posts&action=index" method="POST">
    <div class="form-group">
        <label for="usertype">User Type:</label>
        <input type="text" calss="form-control" id="usertype" value="<?php echo $usertype->usertype; ?>" disabled />
    </div>
    <div class="btn-group">
        <button type="submit" class="btn btn-danger">Cancel</button>
        <button type="submit" class="btn btn-primary disabled" disabled>Submit</button>
    </div>
</form>