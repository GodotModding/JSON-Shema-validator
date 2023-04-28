extends GutTest

var schema_0 := {
	"type": "array",
	"title": "Color Over",
	"prefixItems": [
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 }
	],
	"items": false,
}
var schema_1 := {
	"type": "string",
	"title": "Color Over",
	"prefixItems": [
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 }
	],
	"items": false,
}
var schema_2 := {
	"type": "array",
	"title": "Color Over",
	"prefixItems": [
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 }
	],
	"items": { "type": "number", "minimum": 0, "maximum": 255 },
}
var schema_3 := {
	"type": "array",
	"title": "Color Over",
	"items": { "type": "number", "minimum": 0, "maximum": 255 },
}
var schema_4 := {
	"type": "array",
	"title": "Color Over",
}
var schema_5 := {
	"type": "array",
	"title": "Color Over",
	"prefixItems": [
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 }
	],
	"items": true,
}
var schema_6 := {
	"type": "array",
	"title": "Color Over",
	"minItems": 3,
	"maxItems": 4,
}
var schema_7 := {
	"type": "array",
	"title": "Color Over",
	"prefixItems": [
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 },
		{ "type": "number", "minimum": 0, "maximum": 255 }
	],
	"items": false,
	"minItems": 3,
	"maxItems": 4,
}

var data_0 := [0, 0, 0, 255]
var data_1 := [255, 255, 255, 255]
var data_2 := [0, 0, 0, 256]
var data_3 := [0, 0, -1, -256]
var data_4 := [0, 0, 1, 256, 222]
var data_5 := [0, 0, 1, 256, "test"]
var data_6 := ["test", "test", "test", "test"]
var data_7 := [0, 0, 0, 255, "test", false, 22]
var data_8 := [0, "test"]
var data_9 := [255, 255]
var data_10 := [1, 2, 3]
var data_11 := [1, 2, 3, 4]

var test_is_json_valid_params = [
	[data_0, schema_0, true],
	[data_0, schema_1, false],
	[data_0, schema_2, true],
	[data_0, schema_3, true],
	[data_0, schema_4, true],
	[data_0, schema_5, true],
	[data_0, schema_6, true],
	[data_0, schema_7, true],

	[data_1, schema_0, true],
	[data_1, schema_1, false],
	[data_1, schema_2, true],
	[data_1, schema_3, true],
	[data_1, schema_4, true],
	[data_1, schema_5, true],
	[data_1, schema_6, true],
	[data_1, schema_7, true],

	[data_2, schema_0, false],
	[data_2, schema_1, false],
	[data_2, schema_2, false],
	[data_2, schema_3, false],
	[data_2, schema_4, true],
	[data_2, schema_5, false],
	[data_2, schema_6, true],
	[data_2, schema_7, false],

	[data_3, schema_0, false],
	[data_3, schema_1, false],
	[data_3, schema_2, false],
	[data_3, schema_3, false],
	[data_3, schema_4, true],
	[data_3, schema_5, false],
	[data_3, schema_6, true],
	[data_3, schema_7, false],

	[data_4, schema_0, false],
	[data_4, schema_1, false],
	[data_4, schema_2, false],
	[data_4, schema_3, false],
	[data_4, schema_4, true],
	[data_4, schema_5, false],
	[data_4, schema_6, false],
	[data_4, schema_7, false],

	[data_5, schema_0, false],
	[data_5, schema_1, false],
	[data_5, schema_2, false],
	[data_5, schema_3, false],
	[data_5, schema_4, true],
	[data_5, schema_5, false],
	[data_5, schema_6, false],
	[data_5, schema_7, false],

	[data_6, schema_0, false],
	[data_6, schema_1, false],
	[data_6, schema_2, false],
	[data_6, schema_3, false],
	[data_6, schema_4, true],
	[data_6, schema_5, false],
	[data_6, schema_6, true],
	[data_6, schema_7, false],

	[data_7, schema_0, false],
	[data_7, schema_1, false],
	[data_7, schema_2, false],
	[data_7, schema_3, false],
	[data_7, schema_4, true],
	[data_7, schema_5, true],
	[data_7, schema_6, false],
	[data_7, schema_7, false],

	[data_8, schema_0, false],
	[data_8, schema_1, false],
	[data_8, schema_2, false],
	[data_8, schema_3, false],
	[data_8, schema_4, true],
	[data_8, schema_5, false],
	[data_8, schema_6, false],
	[data_8, schema_7, false],

	[data_9, schema_0, true],
	[data_9, schema_1, false],
	[data_9, schema_2, true],
	[data_9, schema_3, true],
	[data_9, schema_4, true],
	[data_9, schema_5, true],
	[data_9, schema_6, false],
	[data_9, schema_7, false],

	[data_10, schema_0, true],
	[data_10, schema_1, false],
	[data_10, schema_2, true],
	[data_10, schema_3, true],
	[data_10, schema_4, true],
	[data_10, schema_5, true],
	[data_10, schema_6, true],
	[data_10, schema_7, true],

	[data_11, schema_0, true],
	[data_11, schema_1, false],
	[data_11, schema_2, true],
	[data_11, schema_3, true],
	[data_11, schema_4, true],
	[data_11, schema_5, true],
	[data_11, schema_6, true],
	[data_11, schema_7, true],
]


func test_validate(params = use_parameters(test_is_json_valid_params)) -> void:
	# prepare
	var json_data = JSON.print(params[0])
	var json_schema = JSON.print(params[1])
	var expected_result = params[2]

	# test
	var json_schema_validator = JSONSchema.new()
	var error = json_schema_validator.validate(json_data, json_schema)

	var result = error == ""

	# validate
	assert_true(
		result == expected_result,
		"Expected %s but was %s instead for json_data \"%s\" with json_schema \"%s\" and error: %s " % [expected_result, result, json_data, json_schema, error]
	)
