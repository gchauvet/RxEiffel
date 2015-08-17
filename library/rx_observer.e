note

	description:

		"Observer part"

	library: "Reactive X"
	copyright: "Copyright (c) 2015, Guillaume CHAUVET"
	license: "Eiffel Forum License 2"

deferred class RX_OBSERVER

inherit

	ANY
			-- Needed for SE 2.1b1.
        HASHABLE
			
feature -- Access

	on_next (item: RX_OBSERVER) is
			-- An Observable calls this method whenever the Observable emits an item.
			-- This method takes as a parameter the item emitted by the Observable.
		require
			not_void: item /= Void
		deferred
		end
		
	on_error (exception: EXCEPTION) is
			-- An Observable calls this method to indicate that it has failed to generate
			-- the expected data or has encountered some other error. This stops the Observable and
			-- it will not make further calls to onNext or onCompleted.
			-- The onError method takes as its parameter an indication of what caused the error.
		require
			not_void: exception /= Void
		deferred
		end

	on_completed is
			-- An Observable calls this method after it has called onNext for the final time,
			-- if it has not encountered any errors.
		deferred
		end

end
