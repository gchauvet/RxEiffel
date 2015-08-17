note

	description:

		"Test Observable part"

	test_status: "ok_to_run"
	library: "Reactive X"
	copyright: "Copyright (c) 2015, Guillaume CHAUVET"
	license: "Eiffel Forum License 2"

class RX_TEST_OBSERVABLE

inherit

	TS_TEST_CASE

create

	make_default
	
feature -- Tests

	test_make
		local
			instance: RX_OBSERVABLE[INTEGER]
		do
			instance := create {RX_OBSERVABLE[INTEGER]}.make
			assert ("instance_not_void", instance /= Void)
		end
		
		
	test_add_subscriber
		local
			observable: RX_OBSERVABLE[INTEGER]
			observer: RX_OBSERVER[INTEGER]
		do
			observable := create {RX_OBSERVABLE[INTEGER]}.make
			observer := create {MK_OBSERVER}.make
			observable.subscribe(observer)
		end

end