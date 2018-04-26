<div class="container-fluid">
    <form action="?controller=signin&action=challenge" method="POST" style="display:table;margin:auto;">
        <div class="form-group">
            <label for="exampleInputEmail1">User name</label>
            <input type="text" value="<?php echo $user->name; ?>" name="txtusername" class="form-control" aria-describedby="emailHelp" placeholder="User name" required autofocus>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="txtpassword" value="<?php echo $user->pwd; ?>" class="form-control" placeholder="Password" required>
        </div>
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Sign in</button>
        <div class="alert alert-warning <?php echo isset($user->warnings)? 'd-block':'d-none'; ?>" role="alert">
            <?php echo isset($user->warnings)? $user->warnings:''; ?>
        </div>
    </form>
</div>