On Error Resume Next

Const HKEY_CURRENT_USER = &H80000001

strComputer = "."
strEntry = "1400"

Set objReg = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}\\" & strComputer & _
        "\root\default:StdRegProv")

strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Internet Settings\" _
    & "Zones\1"
objReg.GetDWORDValue HKEY_CURRENT_USER, strKeyPath, strEntry, dwValue

Select Case dwValue
    Case 0 strSetting = "Enabled"
    Case 1 strSetting = "Prompt"
    case 3 strSetting = "Disabled"
End Select

Wscript.Echo "Allow scripting: " & strSetting

'' SIG '' Begin signature block
'' SIG '' MIIkCAYJKoZIhvcNAQcCoIIj+TCCI/UCAQExCzAJBgUr
'' SIG '' DgMCGgUAMGcGCisGAQQBgjcCAQSgWTBXMDIGCisGAQQB
'' SIG '' gjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIBAAIB
'' SIG '' AAIBAAIBAAIBADAhMAkGBSsOAwIaBQAEFDDMwRjKTciR
'' SIG '' fDcOCuqreXfegsOFoIIe4TCCBBIwggL6oAMCAQICDwDB
'' SIG '' AIs8PIgR0T72Y+zfQDANBgkqhkiG9w0BAQQFADBwMSsw
'' SIG '' KQYDVQQLEyJDb3B5cmlnaHQgKGMpIDE5OTcgTWljcm9z
'' SIG '' b2Z0IENvcnAuMR4wHAYDVQQLExVNaWNyb3NvZnQgQ29y
'' SIG '' cG9yYXRpb24xITAfBgNVBAMTGE1pY3Jvc29mdCBSb290
'' SIG '' IEF1dGhvcml0eTAeFw05NzAxMTAwNzAwMDBaFw0yMDEy
'' SIG '' MzEwNzAwMDBaMHAxKzApBgNVBAsTIkNvcHlyaWdodCAo
'' SIG '' YykgMTk5NyBNaWNyb3NvZnQgQ29ycC4xHjAcBgNVBAsT
'' SIG '' FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEhMB8GA1UEAxMY
'' SIG '' TWljcm9zb2Z0IFJvb3QgQXV0aG9yaXR5MIIBIjANBgkq
'' SIG '' hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqQK9wXDmO/JO
'' SIG '' Gyifl3heMOqiqY0lX/j+lUyjt/6doiA+fFGim6KPYDJr
'' SIG '' 0UJkee6sdslU2vLrnIYcj5+EZrPFa3piI9YdPN4PAZLo
'' SIG '' lsS/LWaammgmmdA6LL8MtVgmwUbnCj44liypKDmo7EmD
'' SIG '' QuOED7uabFVhrIJ8oWAtd0zpmbRkO5pQHDEIJBSfqeeR
'' SIG '' KxjmPZhjFGBYBWWfHTdSh/en75QCxhvTv1VFs4mAvzrs
'' SIG '' VJROrv2nem10Tq8YzJYJKCEAV5BgaTe7SxIHPFb/W/uk
'' SIG '' ZgoIptKBVlfvtjteFoF3BNr2vq6Alf6wzX/WpxpyXDzK
'' SIG '' vPAIoyIwswaFybMgdxOF3wIDAQABo4GoMIGlMIGiBgNV
'' SIG '' HQEEgZowgZeAEFvQcO9pcp4jUX4Usk2O/8uhcjBwMSsw
'' SIG '' KQYDVQQLEyJDb3B5cmlnaHQgKGMpIDE5OTcgTWljcm9z
'' SIG '' b2Z0IENvcnAuMR4wHAYDVQQLExVNaWNyb3NvZnQgQ29y
'' SIG '' cG9yYXRpb24xITAfBgNVBAMTGE1pY3Jvc29mdCBSb290
'' SIG '' IEF1dGhvcml0eYIPAMEAizw8iBHRPvZj7N9AMA0GCSqG
'' SIG '' SIb3DQEBBAUAA4IBAQCV6AvAjfOXGDXtuAEk2HcR81xg
'' SIG '' Mp+eC8s+BZGIj8k65iHy8FeTLLWgR8hi7/zXzDs7Wqk2
'' SIG '' VGn+JG0/ycyq3gV83TGNPZ8QcGq7/hJPGGnA/NBD4xFa
'' SIG '' IE/qYnuvqhnIKzclLb5loRKKJQ9jo/dUHPkhydYV81Ks
'' SIG '' bkMyB/2CF/jlZ2wNUfa98VLHvefEMPwgMQmIHZUpGk3V
'' SIG '' HQKl8YDgA7Rb9LHdyFfuZUnHUlS2tAMoEv+Q1vAIj364
'' SIG '' l8WrNyzkeuSod+N2oADQaj/B0jaK4EESqDVqG2rbNeHU
'' SIG '' HATkqEUEyFozOG5NHA1itwqijNPVVD9GzRxVpnDbEjqH
'' SIG '' k3Wfp9KgMIIEEjCCAvqgAwIBAgIPAMEAizw8iBHRPvZj
'' SIG '' 7N9AMA0GCSqGSIb3DQEBBAUAMHAxKzApBgNVBAsTIkNv
'' SIG '' cHlyaWdodCAoYykgMTk5NyBNaWNyb3NvZnQgQ29ycC4x
'' SIG '' HjAcBgNVBAsTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEh
'' SIG '' MB8GA1UEAxMYTWljcm9zb2Z0IFJvb3QgQXV0aG9yaXR5
'' SIG '' MB4XDTk3MDExMDA3MDAwMFoXDTIwMTIzMTA3MDAwMFow
'' SIG '' cDErMCkGA1UECxMiQ29weXJpZ2h0IChjKSAxOTk3IE1p
'' SIG '' Y3Jvc29mdCBDb3JwLjEeMBwGA1UECxMVTWljcm9zb2Z0
'' SIG '' IENvcnBvcmF0aW9uMSEwHwYDVQQDExhNaWNyb3NvZnQg
'' SIG '' Um9vdCBBdXRob3JpdHkwggEiMA0GCSqGSIb3DQEBAQUA
'' SIG '' A4IBDwAwggEKAoIBAQCpAr3BcOY78k4bKJ+XeF4w6qKp
'' SIG '' jSVf+P6VTKO3/p2iID58UaKboo9gMmvRQmR57qx2yVTa
'' SIG '' 8uuchhyPn4Rms8VremIj1h083g8BkuiWxL8tZpqaaCaZ
'' SIG '' 0Dosvwy1WCbBRucKPjiWLKkoOajsSYNC44QPu5psVWGs
'' SIG '' gnyhYC13TOmZtGQ7mlAcMQgkFJ+p55ErGOY9mGMUYFgF
'' SIG '' ZZ8dN1KH96fvlALGG9O/VUWziYC/OuxUlE6u/ad6bXRO
'' SIG '' rxjMlgkoIQBXkGBpN7tLEgc8Vv9b+6RmCgim0oFWV++2
'' SIG '' O14WgXcE2va+roCV/rDNf9anGnJcPMq88AijIjCzBoXJ
'' SIG '' syB3E4XfAgMBAAGjgagwgaUwgaIGA1UdAQSBmjCBl4AQ
'' SIG '' W9Bw72lyniNRfhSyTY7/y6FyMHAxKzApBgNVBAsTIkNv
'' SIG '' cHlyaWdodCAoYykgMTk5NyBNaWNyb3NvZnQgQ29ycC4x
'' SIG '' HjAcBgNVBAsTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEh
'' SIG '' MB8GA1UEAxMYTWljcm9zb2Z0IFJvb3QgQXV0aG9yaXR5
'' SIG '' gg8AwQCLPDyIEdE+9mPs30AwDQYJKoZIhvcNAQEEBQAD
'' SIG '' ggEBAJXoC8CN85cYNe24ASTYdxHzXGAyn54Lyz4FkYiP
'' SIG '' yTrmIfLwV5MstaBHyGLv/NfMOztaqTZUaf4kbT/JzKre
'' SIG '' BXzdMY09nxBwarv+Ek8YacD80EPjEVogT+pie6+qGcgr
'' SIG '' NyUtvmWhEoolD2Oj91Qc+SHJ1hXzUqxuQzIH/YIX+OVn
'' SIG '' bA1R9r3xUse958Qw/CAxCYgdlSkaTdUdAqXxgOADtFv0
'' SIG '' sd3IV+5lScdSVLa0AygS/5DW8AiPfriXxas3LOR65Kh3
'' SIG '' 43agANBqP8HSNorgQRKoNWobats14dQcBOSoRQTIWjM4
'' SIG '' bk0cDWK3CqKM09VUP0bNHFWmcNsSOoeTdZ+n0qAwggRg
'' SIG '' MIIDTKADAgECAgouqxHcUP9cncvAMAkGBSsOAwIdBQAw
'' SIG '' cDErMCkGA1UECxMiQ29weXJpZ2h0IChjKSAxOTk3IE1p
'' SIG '' Y3Jvc29mdCBDb3JwLjEeMBwGA1UECxMVTWljcm9zb2Z0
'' SIG '' IENvcnBvcmF0aW9uMSEwHwYDVQQDExhNaWNyb3NvZnQg
'' SIG '' Um9vdCBBdXRob3JpdHkwHhcNMDcwODIyMjIzMTAyWhcN
'' SIG '' MTIwODI1MDcwMDAwWjB5MQswCQYDVQQGEwJVUzETMBEG
'' SIG '' A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
'' SIG '' ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
'' SIG '' MSMwIQYDVQQDExpNaWNyb3NvZnQgQ29kZSBTaWduaW5n
'' SIG '' IFBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
'' SIG '' ggEBALd5fdZds0U5qDSsMdr5JTVJd8D7H57HRXHv0Ubo
'' SIG '' 1IzDa0xSYvSZAsNN2ElsLyQ+Zb/OI7cLSLd/dd1FvaqP
'' SIG '' DlDFJSvyoOcNIx/RQST6YpnPGUWlk0ofmc2zLyLDSi18
'' SIG '' b9kVHjuMORA53b0p9GY7LQEy//4nSKa1bAGHnPu6smN/
'' SIG '' gvlcoIGEhY6w8riUo884plCFFyeHTt0w9gA99Mb5PYG+
'' SIG '' hu1sOacuNPa0Lq8KfWKReGacmHMNhq/yxPMguU8SjWPL
'' SIG '' LNkyRRnuu0qWO1BTGM5mUXmqrYfIVj6fglCIbgWxNcF7
'' SIG '' JL1SZj2ZTswrfjNuhEcG0Z7QSoYCboYApMCH31MCAwEA
'' SIG '' AaOB+jCB9zATBgNVHSUEDDAKBggrBgEFBQcDAzCBogYD
'' SIG '' VR0BBIGaMIGXgBBb0HDvaXKeI1F+FLJNjv/LoXIwcDEr
'' SIG '' MCkGA1UECxMiQ29weXJpZ2h0IChjKSAxOTk3IE1pY3Jv
'' SIG '' c29mdCBDb3JwLjEeMBwGA1UECxMVTWljcm9zb2Z0IENv
'' SIG '' cnBvcmF0aW9uMSEwHwYDVQQDExhNaWNyb3NvZnQgUm9v
'' SIG '' dCBBdXRob3JpdHmCDwDBAIs8PIgR0T72Y+zfQDAPBgNV
'' SIG '' HRMBAf8EBTADAQH/MB0GA1UdDgQWBBTMHc52AHBbr/Ha
'' SIG '' xE6aUUQuo0Rj8DALBgNVHQ8EBAMCAYYwCQYFKw4DAh0F
'' SIG '' AAOCAQEAe6uufkom8s68TnSiWCd0KnWzhv2rTJR4AE3p
'' SIG '' yusY3GnFDqJ88wJDxsqHzPhTzMKfvVZv8GNEqUQA7pbI
'' SIG '' mtUcuAufGQ2U19oerSl97+2mc6yP3jmOPZhqvDht0oiv
'' SIG '' I/3f6dZpCZGIvf7hALs08/d8+RASLgXrKZaTQmsocbc4
'' SIG '' j+AHDcldaM29gEFrZqi7t7uONMryAxB8evXS4ELfe/7h
'' SIG '' 4az+9t/VDbNw1pLjT7Y4onwt1D3bNAtiNwKfgWojifZc
'' SIG '' Y4+wWrs512CMVYQaM/U7mKCCDKJfi7Mst6Gly6vaILa/
'' SIG '' MBmFIBQNKrxS9EHgXjDjkihph8Fw4vOnq86AQnJ2DjCC
'' SIG '' BGowggNSoAMCAQICCmEPeE0AAAAAAAMwDQYJKoZIhvcN
'' SIG '' AQEFBQAweTELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
'' SIG '' c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
'' SIG '' BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEjMCEGA1UE
'' SIG '' AxMaTWljcm9zb2Z0IENvZGUgU2lnbmluZyBQQ0EwHhcN
'' SIG '' MDcwODIzMDAyMzEzWhcNMDkwMjIzMDAzMzEzWjB0MQsw
'' SIG '' CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
'' SIG '' MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
'' SIG '' b2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNyb3Nv
'' SIG '' ZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUA
'' SIG '' A4IBDwAwggEKAoIBAQCi2wqNz8LBSZvNqjo0rSNZa9ts
'' SIG '' viEit5TI6q6/xtUmwjIRi7zaXSz7NlYeFSuujw3dFKNu
'' SIG '' KEx/Fj9BrI1AsUaIDdmBlK2XBtBXRHZc6vH8DuJ/dKMz
'' SIG '' y3Tl7+NhoX4Dt0X/1T4S1bDKXg3Qe/K3Ew38YGoohXWM
'' SIG '' t628hegXtJC+9Ra2Yl3tEd867iFbi6+Ac8NF45WJd2Cb
'' SIG '' 5613wTeNMxQvE9tiya4aqU+YZ63UIDkwceCNZ0bixhz0
'' SIG '' DVB0QS/oBSRqIWtJsJLEsjnHQqVtXBhKq4/XjoM+eApH
'' SIG '' 2KSyhCPD4vJ7ZrFKdL0mQUucYRRgTjDIgvPQC3B87lVN
'' SIG '' d9IIVXaBAgMBAAGjgfgwgfUwDgYDVR0PAQH/BAQDAgbA
'' SIG '' MB0GA1UdDgQWBBTzIUCOfFH4VEuY5RfXaoM0BS4m6DAT
'' SIG '' BgNVHSUEDDAKBggrBgEFBQcDAzAfBgNVHSMEGDAWgBTM
'' SIG '' Hc52AHBbr/HaxE6aUUQuo0Rj8DBEBgNVHR8EPTA7MDmg
'' SIG '' N6A1hjNodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtp
'' SIG '' L2NybC9wcm9kdWN0cy9DU1BDQS5jcmwwSAYIKwYBBQUH
'' SIG '' AQEEPDA6MDgGCCsGAQUFBzAChixodHRwOi8vd3d3Lm1p
'' SIG '' Y3Jvc29mdC5jb20vcGtpL2NlcnRzL0NTUENBLmNydDAN
'' SIG '' BgkqhkiG9w0BAQUFAAOCAQEAQFdvU2eeIIM0AQ7mF0s8
'' SIG '' revYgX/uDXl0d0+XRxjzABVpfttikKL9Z6Gc5Cgp+lXX
'' SIG '' mf5Qv14Js7mm7YLzmB5vWfr18eEM04sIPhYXINHAtUVH
'' SIG '' CCZgVwlLlPAIzLpNbvDiSBIoNYshct9ftq9pEiSU7uk0
'' SIG '' Cdt+bm+SClLKKkxJqjIshuihzF0mvLw84Fuygwu6NRxP
'' SIG '' hEVH/7uUoVkHqZbdeL1Xf6WnTszyrZyaQeLLXCQ+3H80
'' SIG '' R072z8h7neu2yZxjFFOvrZrv17/PoKGrlcp6K4cswMfZ
'' SIG '' /GwD2r84rfHRXBkXD8D3yoCmEAga3ZAj57ChTD7qsBEm
'' SIG '' eA7BLLmka8ePPDCCBJ0wggOFoAMCAQICCmEULKcAAAAA
'' SIG '' AAYwDQYJKoZIhvcNAQEFBQAweTELMAkGA1UEBhMCVVMx
'' SIG '' EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
'' SIG '' ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
'' SIG '' dGlvbjEjMCEGA1UEAxMaTWljcm9zb2Z0IFRpbWVzdGFt
'' SIG '' cGluZyBQQ0EwHhcNMDcwNjEyMjM1NDUxWhcNMTIwNjEz
'' SIG '' MDAwNDUxWjCBpjELMAkGA1UEBhMCVVMxEzARBgNVBAgT
'' SIG '' Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAc
'' SIG '' BgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEnMCUG
'' SIG '' A1UECxMebkNpcGhlciBEU0UgRVNOOjI3RjQtRDQ0MC01
'' SIG '' NEYzMScwJQYDVQQDEx5NaWNyb3NvZnQgVGltZXN0YW1w
'' SIG '' aW5nIFNlcnZpY2UwggEiMA0GCSqGSIb3DQEBAQUAA4IB
'' SIG '' DwAwggEKAoIBAQCRy6R7FHPT59SGk8ADfdhEpOGztfi4
'' SIG '' /bwqUwLKr5HdoRmDOjF49JZEDebg7kVms7z2AnTqNDi8
'' SIG '' 03c8I7Rw/Acyzp7zRUPmdFNMTi9bvFMFPoH84cNWweQm
'' SIG '' k9t8umPgkWxWcqrroIsWeGWIl07ieyKLzapZns14xzhi
'' SIG '' i0ONT8bnQ8xBReL72THv2P++aTHK7Ha59CG0kDQX/skQ
'' SIG '' +biGz16h0VKyRlghuDlXgW8Iil9sdRXAkDZ2rbbYSaRI
'' SIG '' fXaeCRPswgB944e8lw8OHPWaRtWk7GvDqnNI+O6ThPkl
'' SIG '' EkqOBIDgdFDiEWng9fti4WZseTMEpidxhDU2YxIrWRMG
'' SIG '' ecV1AgMBAAGjgfgwgfUwHQYDVR0OBBYEFDdV2ZYJkbWu
'' SIG '' W9o/9lmh/kr0gZagMB8GA1UdIwQYMBaAFG/oTj+XuTSr
'' SIG '' S4aPvJzqrDtBQ8bQMEQGA1UdHwQ9MDswOaA3oDWGM2h0
'' SIG '' dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3By
'' SIG '' b2R1Y3RzL3RzcGNhLmNybDBIBggrBgEFBQcBAQQ8MDow
'' SIG '' OAYIKwYBBQUHMAKGLGh0dHA6Ly93d3cubWljcm9zb2Z0
'' SIG '' LmNvbS9wa2kvY2VydHMvdHNwY2EuY3J0MBMGA1UdJQQM
'' SIG '' MAoGCCsGAQUFBwMIMA4GA1UdDwEB/wQEAwIGwDANBgkq
'' SIG '' hkiG9w0BAQUFAAOCAQEAJZxvhzktGoixAgM+u/JIbOo8
'' SIG '' DQ6u7uYHlQ5iukcnj9MNqmgiHyn6z/y+2u2kL6jycpQO
'' SIG '' dCez9KyMAEXITZxeAQTej1vJ5VYqnuaTPfHdASHHBsHi
'' SIG '' QVkycf1YFiGz8xrkBqtbAGgZd3z497e7pyLJVCuI0oic
'' SIG '' zyzQOl86CHwVYfUCKBWfOW3Gai/4MHiuWeTsavi1lFaW
'' SIG '' NffDOAw8ghlAzoCKKGoCWR9AbAvC77A/NXrrpXlqi9EK
'' SIG '' IuZg+AsQEqwhYBStvMk117/9mNdaATQFemayjpzxu+Gh
'' SIG '' yXbw9bIcTE1AGVm4RqtMyKxMlELjJ675Uz+TymN8JZfL
'' SIG '' l8Q2nvmuoDCCBJ0wggOFoAMCAQICCmEULKcAAAAAAAYw
'' SIG '' DQYJKoZIhvcNAQEFBQAweTELMAkGA1UEBhMCVVMxEzAR
'' SIG '' BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
'' SIG '' bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
'' SIG '' bjEjMCEGA1UEAxMaTWljcm9zb2Z0IFRpbWVzdGFtcGlu
'' SIG '' ZyBQQ0EwHhcNMDcwNjEyMjM1NDUxWhcNMTIwNjEzMDAw
'' SIG '' NDUxWjCBpjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
'' SIG '' c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
'' SIG '' BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEnMCUGA1UE
'' SIG '' CxMebkNpcGhlciBEU0UgRVNOOjI3RjQtRDQ0MC01NEYz
'' SIG '' MScwJQYDVQQDEx5NaWNyb3NvZnQgVGltZXN0YW1waW5n
'' SIG '' IFNlcnZpY2UwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
'' SIG '' ggEKAoIBAQCRy6R7FHPT59SGk8ADfdhEpOGztfi4/bwq
'' SIG '' UwLKr5HdoRmDOjF49JZEDebg7kVms7z2AnTqNDi803c8
'' SIG '' I7Rw/Acyzp7zRUPmdFNMTi9bvFMFPoH84cNWweQmk9t8
'' SIG '' umPgkWxWcqrroIsWeGWIl07ieyKLzapZns14xzhii0ON
'' SIG '' T8bnQ8xBReL72THv2P++aTHK7Ha59CG0kDQX/skQ+biG
'' SIG '' z16h0VKyRlghuDlXgW8Iil9sdRXAkDZ2rbbYSaRIfXae
'' SIG '' CRPswgB944e8lw8OHPWaRtWk7GvDqnNI+O6ThPklEkqO
'' SIG '' BIDgdFDiEWng9fti4WZseTMEpidxhDU2YxIrWRMGecV1
'' SIG '' AgMBAAGjgfgwgfUwHQYDVR0OBBYEFDdV2ZYJkbWuW9o/
'' SIG '' 9lmh/kr0gZagMB8GA1UdIwQYMBaAFG/oTj+XuTSrS4aP
'' SIG '' vJzqrDtBQ8bQMEQGA1UdHwQ9MDswOaA3oDWGM2h0dHA6
'' SIG '' Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1
'' SIG '' Y3RzL3RzcGNhLmNybDBIBggrBgEFBQcBAQQ8MDowOAYI
'' SIG '' KwYBBQUHMAKGLGh0dHA6Ly93d3cubWljcm9zb2Z0LmNv
'' SIG '' bS9wa2kvY2VydHMvdHNwY2EuY3J0MBMGA1UdJQQMMAoG
'' SIG '' CCsGAQUFBwMIMA4GA1UdDwEB/wQEAwIGwDANBgkqhkiG
'' SIG '' 9w0BAQUFAAOCAQEAJZxvhzktGoixAgM+u/JIbOo8DQ6u
'' SIG '' 7uYHlQ5iukcnj9MNqmgiHyn6z/y+2u2kL6jycpQOdCez
'' SIG '' 9KyMAEXITZxeAQTej1vJ5VYqnuaTPfHdASHHBsHiQVky
'' SIG '' cf1YFiGz8xrkBqtbAGgZd3z497e7pyLJVCuI0oiczyzQ
'' SIG '' Ol86CHwVYfUCKBWfOW3Gai/4MHiuWeTsavi1lFaWNffD
'' SIG '' OAw8ghlAzoCKKGoCWR9AbAvC77A/NXrrpXlqi9EKIuZg
'' SIG '' +AsQEqwhYBStvMk117/9mNdaATQFemayjpzxu+GhyXbw
'' SIG '' 9bIcTE1AGVm4RqtMyKxMlELjJ675Uz+TymN8JZfLl8Q2
'' SIG '' nvmuoDCCBJ0wggOFoAMCAQICEGoLmU/AACWrEdtFH1h6
'' SIG '' Z6IwDQYJKoZIhvcNAQEFBQAwcDErMCkGA1UECxMiQ29w
'' SIG '' eXJpZ2h0IChjKSAxOTk3IE1pY3Jvc29mdCBDb3JwLjEe
'' SIG '' MBwGA1UECxMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSEw
'' SIG '' HwYDVQQDExhNaWNyb3NvZnQgUm9vdCBBdXRob3JpdHkw
'' SIG '' HhcNMDYwOTE2MDEwNDQ3WhcNMTkwOTE1MDcwMDAwWjB5
'' SIG '' MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
'' SIG '' bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
'' SIG '' cm9zb2Z0IENvcnBvcmF0aW9uMSMwIQYDVQQDExpNaWNy
'' SIG '' b3NvZnQgVGltZXN0YW1waW5nIFBDQTCCASIwDQYJKoZI
'' SIG '' hvcNAQEBBQADggEPADCCAQoCggEBANw3bvuvyEJKcRjI
'' SIG '' zkg+U8D6qxS6LDK7Ek9SyIPtPjPZSTGSKLaRZOAfUIS6
'' SIG '' wkvRfwX473W+i8eo1a5pcGZ4J2botrfvhbnN7qr9EqQL
'' SIG '' WSIpL89A2VYEG3a1bWRtSlTb3fHev5+Dx4Dff0wCN5T1
'' SIG '' wJ4IVh5oR83ZwHZcL322JQS0VltqHGP/gHw87tUEJU05
'' SIG '' d3QHXcJc2IY3LHXJDuoeOQl8dv6dbG564Ow+j5eecQ5f
'' SIG '' Kk8YYmAyntKDTisiXGhFi94vhBBQsvm1Go1s7iWbE/jL
'' SIG '' ENeFDvSCdnM2xpV6osxgBuwFsIYzt/iUW4RBhFiFlG6w
'' SIG '' HyxIzG+cQ+Bq6H8mjmsCAwEAAaOCASgwggEkMBMGA1Ud
'' SIG '' JQQMMAoGCCsGAQUFBwMIMIGiBgNVHQEEgZowgZeAEFvQ
'' SIG '' cO9pcp4jUX4Usk2O/8uhcjBwMSswKQYDVQQLEyJDb3B5
'' SIG '' cmlnaHQgKGMpIDE5OTcgTWljcm9zb2Z0IENvcnAuMR4w
'' SIG '' HAYDVQQLExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xITAf
'' SIG '' BgNVBAMTGE1pY3Jvc29mdCBSb290IEF1dGhvcml0eYIP
'' SIG '' AMEAizw8iBHRPvZj7N9AMBAGCSsGAQQBgjcVAQQDAgEA
'' SIG '' MB0GA1UdDgQWBBRv6E4/l7k0q0uGj7yc6qw7QUPG0DAZ
'' SIG '' BgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8E
'' SIG '' BAMCAYYwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0B
'' SIG '' AQUFAAOCAQEAlE0RMcJ8ULsRjqFhBwEOjHBFje9zVL0/
'' SIG '' CQUt/7hRU4Uc7TmRt6NWC96Mtjsb0fusp8m3sVEhG28I
'' SIG '' aX5rA6IiRu1stG18IrhG04TzjQ++B4o2wet+6XBdRZ+S
'' SIG '' 0szO3Y7A4b8qzXzsya4y1Ye5y2PENtEYIb923juasxtz
'' SIG '' niGI2LS0ElSM9JzCZUqaKCacYIoPO8cTZXhIu8+tgzpP
'' SIG '' sGJY3jDp6Tkd44ny2jmB+RMhjGSAYwYElvKaAkMve0aI
'' SIG '' uv8C2WX5St7aA3STswVuDMyd3ChhfEjxF5wRITgCHIes
'' SIG '' BsWWMrjlQMZTPb2pid7oZjeN9CKWnMywd1RROtZyRLIj
'' SIG '' 9jGCBJMwggSPAgEBMIGHMHkxCzAJBgNVBAYTAlVTMRMw
'' SIG '' EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
'' SIG '' b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
'' SIG '' b24xIzAhBgNVBAMTGk1pY3Jvc29mdCBDb2RlIFNpZ25p
'' SIG '' bmcgUENBAgphD3hNAAAAAAADMAkGBSsOAwIaBQCggb4w
'' SIG '' GQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYB
'' SIG '' BAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcN
'' SIG '' AQkEMRYEFL84hlcB5YXoK5Fhj39Z4vomoBHAMF4GCisG
'' SIG '' AQQBgjcCAQwxUDBOoCaAJABNAGkAYwByAG8AcwBvAGYA
'' SIG '' dAAgAEwAZQBhAHIAbgBpAG4AZ6EkgCJodHRwOi8vd3d3
'' SIG '' Lm1pY3Jvc29mdC5jb20vbGVhcm5pbmcgMA0GCSqGSIb3
'' SIG '' DQEBAQUABIIBAJO3XdnUhHi/p/bUvVRZOFq/zQh0j0eZ
'' SIG '' p/dreorw67RuyGw76qArHHChHBFCzJeBaNTCDRnYCLvU
'' SIG '' Nb2d47VZe5f9EjTjDn1xbf5qfCY/iU/hJBG4YwXCSeRB
'' SIG '' 6/rHUhplJGer1fH6ruryWIopwtCwGERK92d8kOLkL1op
'' SIG '' ptbsgaGmqiR1x++BwE1R0RthrFkOENxWvgDO0GcVYl/e
'' SIG '' j53uUVnDVAEvrjkCMHDhQ9gTNnkR6sPXMJBE8etO08CP
'' SIG '' LQHAnEsZiKMmrrk/QIGsapr/kucD22D+M04Luk2JMMiQ
'' SIG '' iA7mYXUW7x2dEFQt8iwXpyTfS+rkSprUyY6E2tXxmVWo
'' SIG '' fhqhggIfMIICGwYJKoZIhvcNAQkGMYICDDCCAggCAQEw
'' SIG '' gYcweTELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
'' SIG '' bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
'' SIG '' FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEjMCEGA1UEAxMa
'' SIG '' TWljcm9zb2Z0IFRpbWVzdGFtcGluZyBQQ0ECCmEULKcA
'' SIG '' AAAAAAYwBwYFKw4DAhqgXTAYBgkqhkiG9w0BCQMxCwYJ
'' SIG '' KoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0wODAxMjMx
'' SIG '' MzQ0MTlaMCMGCSqGSIb3DQEJBDEWBBQt4roKm7PU+Lph
'' SIG '' bjW3yxMOE5w3hzANBgkqhkiG9w0BAQUFAASCAQBr7ko4
'' SIG '' dM5opzIYtku7UT71DTzjiEu6W5tKEVlhv1qP5UMEQHtb
'' SIG '' zRxDuhdrJnJRtrOpO+RT9PPTi6+lM8nXG41NgHRxfM2/
'' SIG '' 3GXViyQVxmJCyzd259rGoLWuN8oJ618JjbexdtuO679h
'' SIG '' zBkvi7PBVaEoOABDAbOtt+uFo3Crid8bMgVvSDbeO+KF
'' SIG '' t1drlg7dBh960q8wVMSv9U7n4HLt81qje90j1Hc44Hy/
'' SIG '' ZKQF7mP194WA2xI0ks4rNvY5eirX4Czcxb0JYoIZb35Q
'' SIG '' 5ve45sIlScUB/ibhBohk5XZ02YseMTIX8ZAfO3TA7Z+G
'' SIG '' NkW7I0KpJH3U72BMz6oq/tawHyJ1
'' SIG '' End signature block
