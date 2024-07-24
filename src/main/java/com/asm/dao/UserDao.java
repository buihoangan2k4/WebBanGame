package com.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.asm.entity.User;

import jakarta.transaction.Transactional;

public interface UserDao extends JpaRepository<User, Integer> {
	@Query("SELECT u FROM User u WHERE u.username = :username AND u.password = :password")
	User findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
	
	@Query("SELECT u FROM User u WHERE u.username = :username AND u.password = :password AND u.role = 'ADMIN'")
	User findAdminByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

	@Modifying
    @Transactional
	@Query("UPDATE User u SET u.password = :password WHERE u.email = :email")
	void updatePassword(@Param("email") String email, @Param("password") String hashPassword);
}
