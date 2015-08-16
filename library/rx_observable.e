note

	description:

		"Observable part"

	library: "Reactive X"
	copyright: "Copyright (c) 2015, Guillaume CHAUVET"
	license: "Eiffel Forum License 2"

deferred class RX_OBSERVABLE

inherit

	ANY
			-- Needed for SE 2.1b1.
			
creation

        make is
		do
			subscribers := create {DS_HASH_SET}.make
		end

feature -- Access

	subscribe (subscriber: RX_OBSERVER) is
			-- Register an observer
		require
			not_void: subscriber /= Void
		do
		ensure
			subscribers.put(subscriber)
		end
		
	unsubscribe (subscriber: RX_OBSERVER) is
			-- Unregister an observer
		require
			not_void: subscriber /= Void
		do
			subscribers.remove(subscriber)
		end


feature {NONE}

	subscribers : DS_SET

end
