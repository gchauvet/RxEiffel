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
			instance: RX_OBSERVABLE
		do
			instance := create {RX_OBSERVABLE}.make
			assert ("instance_not_void", instance /= Void)
		end

end