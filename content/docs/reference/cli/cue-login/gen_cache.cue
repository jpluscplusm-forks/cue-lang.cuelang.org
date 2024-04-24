package site
{
	content: {
		docs: {
			reference: {
				cli: {
					"cue-login": {
						page: {
							cache: {
								multi_step: {
									hash:       "4LOAL5D0IQV2SN31HF0OOF1EKLATNH7P0TL5A81PCNR82JDFKO50===="
									scriptHash: "B9UPMOB4H46FLDD9V7QEF6VQD6R9Q3RJUUIEIRFN9J21FGAQCRR0===="
									steps: [{
										doc:      ""
										cmd:      "cue help login"
										exitCode: 0
										output: """
												WARNING: THIS COMMAND IS EXPERIMENTAL.

												Log into a CUE registry via the OAuth 2.0 Device Authorization Grant.
												Without an argument, CUE_REGISTRY is used if it points to a single registry.

												Once the authorization is successful, a token is stored in a logins.json file
												inside $CUE_CONFIG_DIR; see 'cue help environment'.

												Usage:
												  cue login [registry] [flags]

												Global Flags:
												  -E, --all-errors   print all available errors
												  -i, --ignore       proceed in the presence of errors
												  -s, --simplify     simplify output
												      --strict       report errors for lossy mappings
												      --trace        trace computation
												  -v, --verbose      print information about progress

												"""
									}]
								}
							}
						}
					}
				}
			}
		}
	}
}
