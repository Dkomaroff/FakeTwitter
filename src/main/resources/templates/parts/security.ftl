<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.isAdmin()
    currentUser = user.getId()
    >
<#else>
    <#assign
    name = "unknown"
    isAdmin = false
    currentUser = - 1
    >
</#if>