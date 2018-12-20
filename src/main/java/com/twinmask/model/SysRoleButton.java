package com.twinmask.model;

public class SysRoleButton {
    private Integer id;

    private Integer roleId;

    private Integer menuButtonId;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getMenuButtonId() {
        return menuButtonId;
    }

    public void setMenuButtonId(Integer menuButtonId) {
        this.menuButtonId = menuButtonId;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}