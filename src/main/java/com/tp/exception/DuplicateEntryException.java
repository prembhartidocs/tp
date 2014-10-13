package com.tp.exception;

public class DuplicateEntryException extends RuntimeException {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String message;
	private Throwable t;

	public DuplicateEntryException(String message, Throwable t) {
		this.message = message;
		this.t = t;
	}

	@Override
	public String getMessage() {
		return message;
	}

	@Override
	public synchronized Throwable getCause() {
		return t;
	}
}
