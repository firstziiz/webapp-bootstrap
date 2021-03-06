<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Fixed navbar -->
<div class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">Webapp Bootstrap</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a href="/">Home</a></li>
        <li><a href="/about">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <sec:authorize access="isAuthenticated()">
          <li id="nav-profile"><a href="<c:url value="/secure/profile" />">Profile</a></li>
          <li class="divider"></li>
          <li><a href="<c:url value="/logout" />">Sign Out</a></li>
        </sec:authorize>
        <sec:authorize access="isAnonymous()">
          <li class="dropdown">
            <a class="dropdown-toggle" href="#" data-toggle="dropdown">Sign In <strong class="caret"></strong></a>
            <div class="dropdown-menu">
              <form action="/login" method="post" accept-charset="UTF-8">
                <label for="j_username"><strong>Username</strong></label>
                <input type="text" class="form-control" name="j_username" id="j_username" placeholder="Your username..." autocomplete="off" autofocus="autofocus">
                <label for="j_password"><strong>Password</strong></label>
                <input type="password" class="form-control" name="j_password" id="j_password" placeholder="Your password...">
                <label class="checkbox">
                  <input type="checkbox"> Remember Me
                </label>
                <button type="submit" class="btn btn-primary btn-block">Sign In</button>
              </form>
            </div>
          </li>
        </sec:authorize>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</div>
