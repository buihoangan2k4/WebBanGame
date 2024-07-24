package com.asm.dto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartDto implements Serializable{
	private Integer userId;
	private BigDecimal totalAmount;
    private HashMap<Integer, CartDetailDto> detail = new HashMap<>();
}
