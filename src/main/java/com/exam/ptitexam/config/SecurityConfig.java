package com.exam.ptitexam.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;


import com.exam.ptitexam.service.CustomUserDetailsService;
import com.exam.ptitexam.service.UserService;

import jakarta.servlet.DispatcherType;


@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfig {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


    
    @Bean
    public UserDetailsService userDetailsService(UserService userService) {
        return new CustomUserDetailsService(userService);
    }

    @Bean
    public DaoAuthenticationProvider authProvider(
                PasswordEncoder passwordEncoder,
                UserDetailsService userDetailsService) {
            DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
            authProvider.setUserDetailsService(userDetailsService);
            authProvider.setPasswordEncoder(passwordEncoder);
            //authProvider.setHideUserNotFoundExceptions(false);
            return authProvider;
    }

    @Bean
    public AuthenticationSuccessHandler customSuccessHandler() {
        return new CustomSuccessHandler();
    }

   
    @Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {   
    http
        .authorizeHttpRequests(authorize -> authorize
            .dispatcherTypeMatchers(DispatcherType.FORWARD, DispatcherType.INCLUDE).permitAll() 
            .requestMatchers("/login","/register", "/client/**","/product/**", "/css/**", "/js/**","/images/**").permitAll()
            .requestMatchers("/admin/**").hasRole("ADMIN")

            .anyRequest().authenticated())
     


        .formLogin(formLogin -> formLogin
            .loginPage("/login")
            .failureUrl("/login?error")
            .successHandler(customSuccessHandler())
            .permitAll())
        .exceptionHandling(ex -> ex.accessDeniedPage("/access-denied"));
    return http.build();
    }
}


