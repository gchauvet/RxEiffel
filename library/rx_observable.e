note

	description:

		"Observable part"

	library: "Reactive X"
	copyright: "Copyright (c) 2015, Guillaume CHAUVET"
	license: "Eiffel Forum License 2"

class RX_OBSERVABLE[G]

inherit

	ANY
			-- Needed for SE 2.1b1.
			
create

        make

feature {NONE}

        make
		do
			subscribers := create {DS_HASH_SET[RX_OBSERVER[G]]}.make_default
		end
        
feature -- Access

	subscribe (subscriber: RX_OBSERVER[G])
			-- Register an observer
		require
			not_void: subscriber /= Void
		do
			subscribers.put(subscriber)
		end
		
	unsubscribe (subscriber: RX_OBSERVER[G])
			-- Unregister an observer
		require
			not_void: subscriber /= Void
		do
			subscribers.remove(subscriber)
		end


feature {NONE}

	subscribers : DS_SET[RX_OBSERVER[G]]

end
