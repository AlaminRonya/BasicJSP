package com.alamin.databases;

import com.alamin.models.Employee;

import java.util.ArrayList;
import java.util.List;

public class DBClass {
    private static final List<Employee> employees = new ArrayList<>();

    public static List<Employee> getEmployees() {
        return employees;
    }

    public static void setEmployees(Employee employee) {
        employees.add(employee);
    }
}
