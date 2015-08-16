note

	description:

		"Test argument parser"

	test_status: "ok_to_run"
	library: "Reactive X"
	copyright: "Copyright (c) 2015, Guillaume CHAUVET"
	license: "Eiffel Forum License 2"

class AP_TEST_OBSERVABLE

inherit

	TS_TEST_CASE

create

	make_default
	
feature -- Tests

	test_make
			-- Can we make a parser?
		local
			p: AP_PARSER
		do
			create p.make
			assert_integers_equal ("has_one_alternative_set", 1, p.alternative_options_lists.count)
			assert_integers_equal ("has_no_options_in_basic", 0, p.options.count)
			assert_integers_equal ("has_one_option", 1, p.all_options.count)
		end

end