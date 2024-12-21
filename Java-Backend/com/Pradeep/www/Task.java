package com.Pradeep.www;

public class Task {
    private int id;
    private String text;
    private boolean completed;

    public Task(int id, String text, boolean completed) {
        this.id = id;
        this.text = text;
        this.completed = completed;
    }

    public int getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public boolean isCompleted() {
        return completed;
    }

    public void setCompleted(boolean completed) {
        this.completed = completed;
    }
}
