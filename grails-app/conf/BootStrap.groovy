import com.assesmart.user.Role
import com.assesmart.user.User
import com.assesmart.user.UserRole

class BootStrap {

    def init = { servletContext ->
        if(User.list().size()==0){
            Role role = new Role();
            role.setAuthority("ROLE_ADMIN")
            role.save()
            User user = new User();
            user.setFirstName("Vivek")
            user.setEnabled(true)
            user.setLastName("Sadh")
            user.setUsername("vivek")
            user.setPassword("123456")
            user.save()
            UserRole userRole = new UserRole();
            userRole.setRole(role)
            userRole.setUser(user)
            userRole.save()
        }
    }
    def destroy = {
    }
}
