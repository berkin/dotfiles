module.exports = {
	extends: 'airbnb',
	env: {
		browser: true,
		jest: true,
	},
	rules: {
		'no-tabs': 0,
		indent: ['error', 'tab'],
		'react/jsx-indent': [2, 'tab'],
		'react/jsx-indent-props': [2, 'tab'],
		semi: [2, 'never'],
		'no-unexpected-multiline': 2,
		'compat/compat': 2,
		'comma-dangle': [
			'error',
			{
				arrays: 'only-multiline',
				objects: 'only-multiline',
				imports: 'only-multiline',
				exports: 'only-multiline',
				functions: 'ignore',
			},
		],
	},
	plugins: ['compat', 'react'],
}

