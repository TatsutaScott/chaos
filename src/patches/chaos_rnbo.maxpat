{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 1468.0, 705.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 239.0, 72.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 803.0, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 803.0, 152.0, 79.0, 22.0 ],
					"text" : "prepend LFO"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New",
					"fontsize" : 12.0,
					"id" : "obj-168",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 81.0, 491.0, 200.0, 20.0 ],
					"text" : "deprecated ________"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-167",
					"inletInfo" : 					{
						"IOInfo" : [  ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
, 							{
								"type" : "signal",
								"index" : 2,
								"tag" : "out2",
								"comment" : ""
							}
, 							{
								"type" : "event",
								"index" : 3,
								"tag" : "out3",
								"comment" : "points"
							}
, 							{
								"type" : "event",
								"index" : 4,
								"tag" : "out4",
								"comment" : "distances"
							}
, 							{
								"type" : "event",
								"index" : 5,
								"tag" : "out5",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "signal", "", "", "", "list" ],
					"patching_rect" : [ 81.0, 515.0, 304.0, 22.0 ],
					"rnboattrcache" : 					{
						"click" : 						{
							"label" : "click",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"x" : 						{
							"label" : "x",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"y" : 						{
							"label" : "y",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"chorus" : 						{
							"label" : "chorus",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"filterbank" : 						{
							"label" : "filterbank",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"LFO" : 						{
							"label" : "LFO",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"delay" : 						{
							"label" : "delay",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"reverb" : 						{
							"label" : "reverb",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"distortion" : 						{
							"label" : "distortion",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"karplus" : 						{
							"label" : "karplus",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"master" : 						{
							"label" : "master",
							"isEnum" : 0,
							"parsestring" : ""
						}

					}
,
					"rnboversion" : "1.3.3",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~[11]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "rnbo~[11]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "9efe0e61-d564-11ef-8e61-1068384f72df"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"__presetid" : "chaos_main_deprecated.rnbopat",
							"x" : 							{
								"value" : 0.0
							}
,
							"click" : 							{
								"value" : 0.0
							}
,
							"y" : 							{
								"value" : 0.0
							}
,
							"chorus" : 							{
								"value" : 1.0
							}
,
							"filterbank" : 							{
								"value" : 1.0
							}
,
							"LFO" : 							{
								"value" : 1.0
							}
,
							"delay" : 							{
								"value" : 1.0
							}
,
							"reverb" : 							{
								"value" : 1.0
							}
,
							"distortion" : 							{
								"value" : 1.0
							}
,
							"__sps" : 							{
								"p_obj-58" : 								{

								}
,
								"sends[7]" : 								{

								}
,
								"p_obj-12" : 								{

								}
,
								"p_obj-38" : 								{

								}
,
								"p_obj-16" : 								{

								}
,
								"sends[2]" : 								{

								}
,
								"sends[4]" : 								{

								}
,
								"sends[6]" : 								{

								}
,
								"p_obj-48" : 								{

								}
,
								"sends[3]" : 								{

								}
,
								"p_obj-28" : 								{

								}
,
								"sends[5]" : 								{

								}
,
								"p_obj-150" : 								{

								}
,
								"sends" : 								{

								}
,
								"p_obj-68" : 								{

								}
,
								"sends[1]" : 								{

								}

							}
,
							"karplus" : 							{
								"value" : 1.0
							}
,
							"master" : 							{
								"value" : 1.0
							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "chaos_main_deprecated.rnbopat",
									"origin" : "chaos_main_deprecated.rnbopat",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"__presetid" : "chaos_main_deprecated.rnbopat",
										"x" : 										{
											"value" : 0.0
										}
,
										"click" : 										{
											"value" : 0.0
										}
,
										"y" : 										{
											"value" : 0.0
										}
,
										"chorus" : 										{
											"value" : 1.0
										}
,
										"filterbank" : 										{
											"value" : 1.0
										}
,
										"LFO" : 										{
											"value" : 1.0
										}
,
										"delay" : 										{
											"value" : 1.0
										}
,
										"reverb" : 										{
											"value" : 1.0
										}
,
										"distortion" : 										{
											"value" : 1.0
										}
,
										"__sps" : 										{
											"p_obj-58" : 											{

											}
,
											"sends[7]" : 											{

											}
,
											"p_obj-12" : 											{

											}
,
											"p_obj-38" : 											{

											}
,
											"p_obj-16" : 											{

											}
,
											"sends[2]" : 											{

											}
,
											"sends[4]" : 											{

											}
,
											"sends[6]" : 											{

											}
,
											"p_obj-48" : 											{

											}
,
											"sends[3]" : 											{

											}
,
											"p_obj-28" : 											{

											}
,
											"sends[5]" : 											{

											}
,
											"p_obj-150" : 											{

											}
,
											"sends" : 											{

											}
,
											"p_obj-68" : 											{

											}
,
											"sends[1]" : 											{

											}

										}
,
										"karplus" : 										{
											"value" : 1.0
										}
,
										"master" : 										{
											"value" : 1.0
										}

									}
,
									"fileref" : 									{
										"name" : "chaos_main_deprecated.rnbopat",
										"filename" : "chaos_main_deprecated.rnbopat.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "c37bf545d620148e8d071aae60bcea3e"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ @patchername chaos_main_deprecated.rnbopat",
					"varname" : "rnbo~[2]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New",
					"fontsize" : 12.0,
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1110.0, 256.0, 124.0, 20.0 ],
					"text" : "[ select module]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1113.0, 309.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"items" : [ "delay", ",", "reverb", ",", "LFO", ",", "generator", ",", "karplus", ",", "distortion", ",", "filterbank", ",", "chorus" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1113.0, 278.0, 100.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New",
					"fontsize" : 12.0,
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 655.0, 256.0, 75.0, 20.0 ],
					"text" : "[ build ]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New",
					"fontsize" : 12.0,
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 751.0, 256.0, 139.0, 20.0 ],
					"text" : "[ test samples ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 674.0, 279.0, 37.0, 37.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 674.0, 382.0, 105.0, 22.0 ],
					"text" : "prepend autobuild"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 27.099999999999984,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "sinc.wav",
								"filename" : "sinc.wav",
								"filekind" : "audiofile",
								"id" : "u714005088",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "gamelan_2.wav",
								"filename" : "gamelan_2.wav",
								"filekind" : "audiofile",
								"id" : "u127005127",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
, 							{
								"absolutepath" : "drumLoop.aif",
								"filename" : "drumLoop.aif",
								"filekind" : "audiofile",
								"id" : "u565005114",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-66",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 732.0, 279.0, 177.0, 84.299999999999955 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 77.0, 1468.0, 705.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1118.0, 267.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1013.0, 267.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1013.0, 15.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1118.0, 235.0, 103.0, 22.0 ],
									"text" : "selector~ 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1013.0, 235.0, 103.0, 22.0 ],
									"text" : "selector~ 8"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 108.0, 49.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 77.0, 49.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 49.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 14.0, 49.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"autosave" : 1,
									"id" : "obj-73",
									"inletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "signal",
												"index" : 1,
												"tag" : "in1",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 2,
												"tag" : "in2",
												"comment" : ""
											}
, 											{
												"type" : "event",
												"index" : 3,
												"tag" : "in3",
												"comment" : "mouse_pos"
											}
, 											{
												"type" : "event",
												"index" : 4,
												"tag" : "in4",
												"comment" : "mouse_click"
											}
 ]
									}
,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "out1",
												"comment" : "points"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "out2",
												"comment" : "distances"
											}
, 											{
												"type" : "signal",
												"index" : 3,
												"tag" : "out3",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 4,
												"tag" : "out4",
												"comment" : ""
											}
 ]
									}
,
									"outlettype" : [ "", "", "signal", "signal", "list" ],
									"patching_rect" : [ 568.0, 119.0, 212.0, 22.0 ],
									"rnboattrcache" : 									{

									}
,
									"rnboversion" : "1.3.3",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "rnbo~[10]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "rnbo~[10]",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"optimization" : "O1",
										"parameter_enable" : 1,
										"uuid" : "128d6291-d15a-11ef-a291-1068384f72df"
									}
,
									"snapshot" : 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "snapshotlist",
										"origin" : "rnbo~",
										"type" : "list",
										"subtype" : "Undefined",
										"embed" : 1,
										"snapshot" : 										{
											"__presetid" : "LFO_module"
										}
,
										"snapshotlist" : 										{
											"current_snapshot" : 0,
											"entries" : [ 												{
													"filetype" : "C74Snapshot",
													"version" : 2,
													"minorversion" : 0,
													"name" : "LFO_module",
													"origin" : "LFO_module",
													"type" : "rnbo",
													"subtype" : "",
													"embed" : 0,
													"snapshot" : 													{
														"__presetid" : "LFO_module"
													}
,
													"fileref" : 													{
														"name" : "LFO_module",
														"filename" : "LFO_module.maxsnap",
														"filepath" : "~/Documents/Max 8/Snapshots",
														"filepos" : -1,
														"snapshotfileid" : "c805ab11d0228b0b7092be98da4ca558"
													}

												}
 ]
										}

									}
,
									"text" : "rnbo~ LFO_module @autobuild 0",
									"varname" : "rnbo~[10]"
								}

							}
, 							{
								"box" : 								{
									"autosave" : 1,
									"id" : "obj-76",
									"inletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "signal",
												"index" : 1,
												"tag" : "in1",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 2,
												"tag" : "in2",
												"comment" : ""
											}
, 											{
												"type" : "event",
												"index" : 3,
												"tag" : "in3",
												"comment" : "mouse_pos"
											}
, 											{
												"type" : "event",
												"index" : 4,
												"tag" : "in4",
												"comment" : "mouse_click"
											}
 ]
									}
,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "out1",
												"comment" : "points"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "out2",
												"comment" : "distances"
											}
, 											{
												"type" : "signal",
												"index" : 3,
												"tag" : "out3",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 4,
												"tag" : "out4",
												"comment" : ""
											}
 ]
									}
,
									"outlettype" : [ "", "", "signal", "signal", "list" ],
									"patching_rect" : [ 134.0, 187.0, 213.0, 22.0 ],
									"rnboattrcache" : 									{

									}
,
									"rnboversion" : "1.3.3",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "rnbo~[2]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "rnbo~[2]",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"optimization" : "O1",
										"parameter_enable" : 1,
										"uuid" : "e867f9e9-d155-11ef-b9e9-1068384f72df"
									}
,
									"snapshot" : 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "snapshotlist",
										"origin" : "rnbo~",
										"type" : "list",
										"subtype" : "Undefined",
										"embed" : 1,
										"snapshot" : 										{
											"__presetid" : "karplus_module"
										}
,
										"snapshotlist" : 										{
											"current_snapshot" : 0,
											"entries" : [ 												{
													"filetype" : "C74Snapshot",
													"version" : 2,
													"minorversion" : 0,
													"name" : "karplus_module",
													"origin" : "karplus_module",
													"type" : "rnbo",
													"subtype" : "",
													"embed" : 0,
													"snapshot" : 													{
														"__presetid" : "karplus_module"
													}
,
													"fileref" : 													{
														"name" : "karplus_module",
														"filename" : "karplus_module.maxsnap",
														"filepath" : "~/Documents/Max 8/Snapshots",
														"filepos" : -1,
														"snapshotfileid" : "63c504ad0454f04a7fc7aad1e78560b8"
													}

												}
 ]
										}

									}
,
									"text" : "rnbo~ karplus_module @autobuild 0",
									"varname" : "rnbo~[2]"
								}

							}
, 							{
								"box" : 								{
									"autosave" : 1,
									"id" : "obj-75",
									"inletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "signal",
												"index" : 1,
												"tag" : "in1",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 2,
												"tag" : "in2",
												"comment" : ""
											}
, 											{
												"type" : "event",
												"index" : 3,
												"tag" : "in3",
												"comment" : "mouse_pos"
											}
, 											{
												"type" : "event",
												"index" : 4,
												"tag" : "in4",
												"comment" : "mouse_click"
											}
 ]
									}
,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "out1",
												"comment" : "points"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "out2",
												"comment" : "distances"
											}
, 											{
												"type" : "signal",
												"index" : 3,
												"tag" : "out3",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 4,
												"tag" : "out4",
												"comment" : ""
											}
 ]
									}
,
									"outlettype" : [ "", "", "signal", "signal", "list" ],
									"patching_rect" : [ 134.0, 119.0, 213.0, 22.0 ],
									"rnboattrcache" : 									{

									}
,
									"rnboversion" : "1.3.3",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "rnbo~",
											"parameter_modmode" : 0,
											"parameter_shortname" : "rnbo~",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"optimization" : "O1",
										"parameter_enable" : 1,
										"uuid" : "e88c3abb-d155-11ef-babb-1068384f72df"
									}
,
									"snapshot" : 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "snapshotlist",
										"origin" : "rnbo~",
										"type" : "list",
										"subtype" : "Undefined",
										"embed" : 1,
										"snapshot" : 										{
											"__presetid" : "delay_module"
										}
,
										"snapshotlist" : 										{
											"current_snapshot" : 0,
											"entries" : [ 												{
													"filetype" : "C74Snapshot",
													"version" : 2,
													"minorversion" : 0,
													"name" : "delay_module",
													"origin" : "delay_module",
													"type" : "rnbo",
													"subtype" : "",
													"embed" : 0,
													"snapshot" : 													{
														"__presetid" : "delay_module"
													}
,
													"fileref" : 													{
														"name" : "delay_module",
														"filename" : "delay_module.maxsnap",
														"filepath" : "~/Documents/Max 8/Snapshots",
														"filepos" : -1,
														"snapshotfileid" : "6df21f1fd5d605ae1f1724eee4b2f573"
													}

												}
 ]
										}

									}
,
									"text" : "rnbo~ delay_module @autobuild 0",
									"varname" : "rnbo~"
								}

							}
, 							{
								"box" : 								{
									"autosave" : 1,
									"id" : "obj-7",
									"inletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "signal",
												"index" : 1,
												"tag" : "in1",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 2,
												"tag" : "in2",
												"comment" : ""
											}
, 											{
												"type" : "event",
												"index" : 3,
												"tag" : "in3",
												"comment" : "mouse_pos"
											}
, 											{
												"type" : "event",
												"index" : 4,
												"tag" : "in4",
												"comment" : "mouse_click"
											}
 ]
									}
,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "out1",
												"comment" : "points"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "out2",
												"comment" : "distances"
											}
, 											{
												"type" : "signal",
												"index" : 3,
												"tag" : "out3",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 4,
												"tag" : "out4",
												"comment" : ""
											}
 ]
									}
,
									"outlettype" : [ "", "", "signal", "signal", "list" ],
									"patching_rect" : [ 786.0, 187.0, 212.0, 22.0 ],
									"rnboattrcache" : 									{

									}
,
									"rnboversion" : "1.3.3",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "rnbo~[8]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "rnbo~[8]",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"optimization" : "O1",
										"parameter_enable" : 1,
										"uuid" : "e8e4e6a7-d155-11ef-a6a7-1068384f72df"
									}
,
									"snapshot" : 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "snapshotlist",
										"origin" : "rnbo~",
										"type" : "list",
										"subtype" : "Undefined",
										"embed" : 1,
										"snapshot" : 										{
											"__presetid" : "chorus_module"
										}
,
										"snapshotlist" : 										{
											"current_snapshot" : 0,
											"entries" : [ 												{
													"filetype" : "C74Snapshot",
													"version" : 2,
													"minorversion" : 0,
													"name" : "chorus_module",
													"origin" : "chorus_module",
													"type" : "rnbo",
													"subtype" : "",
													"embed" : 0,
													"snapshot" : 													{
														"__presetid" : "chorus_module"
													}
,
													"fileref" : 													{
														"name" : "chorus_module",
														"filename" : "chorus_module.maxsnap",
														"filepath" : "~/Documents/Max 8/Snapshots",
														"filepos" : -1,
														"snapshotfileid" : "5d8cb94e82fa1d3fc9c9ba1efce8ab41"
													}

												}
 ]
										}

									}
,
									"text" : "rnbo~ chorus_module @autobuild 0",
									"varname" : "rnbo~[8]"
								}

							}
, 							{
								"box" : 								{
									"autosave" : 1,
									"id" : "obj-80",
									"inletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "signal",
												"index" : 1,
												"tag" : "in1",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 2,
												"tag" : "in2",
												"comment" : ""
											}
, 											{
												"type" : "event",
												"index" : 3,
												"tag" : "in3",
												"comment" : "mouse_pos"
											}
, 											{
												"type" : "event",
												"index" : 4,
												"tag" : "in4",
												"comment" : "mouse_click"
											}
 ]
									}
,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "out1",
												"comment" : "points"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "out2",
												"comment" : "distances"
											}
, 											{
												"type" : "signal",
												"index" : 3,
												"tag" : "out3",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 4,
												"tag" : "out4",
												"comment" : ""
											}
 ]
									}
,
									"outlettype" : [ "", "", "signal", "signal", "list" ],
									"patching_rect" : [ 568.0, 187.0, 212.0, 22.0 ],
									"rnboattrcache" : 									{

									}
,
									"rnboversion" : "1.3.3",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "rnbo~[7]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "rnbo~[7]",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"optimization" : "O1",
										"parameter_enable" : 1,
										"uuid" : "e9021533-d155-11ef-9533-1068384f72df"
									}
,
									"snapshot" : 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "snapshotlist",
										"origin" : "rnbo~",
										"type" : "list",
										"subtype" : "Undefined",
										"embed" : 1,
										"snapshot" : 										{
											"__presetid" : "filterbank_module"
										}
,
										"snapshotlist" : 										{
											"current_snapshot" : 0,
											"entries" : [ 												{
													"filetype" : "C74Snapshot",
													"version" : 2,
													"minorversion" : 0,
													"name" : "filterbank_module",
													"origin" : "filterbank_module",
													"type" : "rnbo",
													"subtype" : "",
													"embed" : 0,
													"snapshot" : 													{
														"__presetid" : "filterbank_module"
													}
,
													"fileref" : 													{
														"name" : "filterbank_module",
														"filename" : "filterbank_module.maxsnap",
														"filepath" : "~/Documents/Max 8/Snapshots",
														"filepos" : -1,
														"snapshotfileid" : "5435df10b99a9cdf5537de6ad37d7487"
													}

												}
 ]
										}

									}
,
									"text" : "rnbo~ filterbank_module @autobuild 0",
									"varname" : "rnbo~[7]"
								}

							}
, 							{
								"box" : 								{
									"autosave" : 1,
									"id" : "obj-79",
									"inletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "signal",
												"index" : 1,
												"tag" : "in1",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 2,
												"tag" : "in2",
												"comment" : ""
											}
, 											{
												"type" : "event",
												"index" : 3,
												"tag" : "in3",
												"comment" : "mouse_pos"
											}
, 											{
												"type" : "event",
												"index" : 4,
												"tag" : "in4",
												"comment" : "mouse_click"
											}
 ]
									}
,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "out1",
												"comment" : "points"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "out2",
												"comment" : "distances"
											}
, 											{
												"type" : "signal",
												"index" : 3,
												"tag" : "out3",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 4,
												"tag" : "out4",
												"comment" : ""
											}
 ]
									}
,
									"outlettype" : [ "", "", "signal", "signal", "list" ],
									"patching_rect" : [ 352.0, 119.0, 197.0, 22.0 ],
									"rnboattrcache" : 									{

									}
,
									"rnboversion" : "1.3.3",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "rnbo~[6]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "rnbo~[6]",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"optimization" : "O1",
										"parameter_enable" : 1,
										"uuid" : "e93acd1f-d155-11ef-8d1f-1068384f72df"
									}
,
									"snapshot" : 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "snapshotlist",
										"origin" : "rnbo~",
										"type" : "list",
										"subtype" : "Undefined",
										"embed" : 1,
										"snapshot" : 										{
											"__presetid" : "reverb_module"
										}
,
										"snapshotlist" : 										{
											"current_snapshot" : 0,
											"entries" : [ 												{
													"filetype" : "C74Snapshot",
													"version" : 2,
													"minorversion" : 0,
													"name" : "reverb_module",
													"origin" : "reverb_module",
													"type" : "rnbo",
													"subtype" : "",
													"embed" : 0,
													"snapshot" : 													{
														"__presetid" : "reverb_module"
													}
,
													"fileref" : 													{
														"name" : "reverb_module",
														"filename" : "reverb_module.maxsnap",
														"filepath" : "~/Documents/Max 8/Snapshots",
														"filepos" : -1,
														"snapshotfileid" : "085d62872421e4324b532653b0a15a95"
													}

												}
 ]
										}

									}
,
									"text" : "rnbo~ reverb_module @autobuild 0",
									"varname" : "rnbo~[6]"
								}

							}
, 							{
								"box" : 								{
									"autosave" : 1,
									"id" : "obj-66",
									"inletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "signal",
												"index" : 1,
												"tag" : "in1",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 2,
												"tag" : "in2",
												"comment" : ""
											}
, 											{
												"type" : "event",
												"index" : 3,
												"tag" : "in3",
												"comment" : "mouse_pos"
											}
, 											{
												"type" : "event",
												"index" : 4,
												"tag" : "in4",
												"comment" : "mouse_click"
											}
 ]
									}
,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "out1",
												"comment" : "points"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "out2",
												"comment" : "distances"
											}
, 											{
												"type" : "signal",
												"index" : 3,
												"tag" : "out3",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 4,
												"tag" : "out4",
												"comment" : ""
											}
 ]
									}
,
									"outlettype" : [ "", "", "signal", "signal", "list" ],
									"patching_rect" : [ 352.0, 187.0, 212.0, 22.0 ],
									"rnboattrcache" : 									{

									}
,
									"rnboversion" : "1.3.3",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "rnbo~[5]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "rnbo~[4]",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"optimization" : "O1",
										"parameter_enable" : 1,
										"uuid" : "e962b1e5-d155-11ef-b1e5-1068384f72df"
									}
,
									"snapshot" : 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "snapshotlist",
										"origin" : "rnbo~",
										"type" : "list",
										"subtype" : "Undefined",
										"embed" : 1,
										"snapshot" : 										{
											"__presetid" : "distortion_module"
										}
,
										"snapshotlist" : 										{
											"current_snapshot" : 0,
											"entries" : [ 												{
													"filetype" : "C74Snapshot",
													"version" : 2,
													"minorversion" : 0,
													"name" : "distortion_module",
													"origin" : "distortion_module",
													"type" : "rnbo",
													"subtype" : "",
													"embed" : 0,
													"snapshot" : 													{
														"__presetid" : "distortion_module"
													}
,
													"fileref" : 													{
														"name" : "distortion_module",
														"filename" : "distortion_module.maxsnap",
														"filepath" : "~/Documents/Max 8/Snapshots",
														"filepos" : -1,
														"snapshotfileid" : "74530f6546a1f90e1f3acfa1d5c4ff58"
													}

												}
 ]
										}

									}
,
									"text" : "rnbo~ distortion_module @autobuild 0",
									"varname" : "rnbo~[5]"
								}

							}
, 							{
								"box" : 								{
									"autosave" : 1,
									"id" : "obj-44",
									"inletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "in1",
												"comment" : "mouse_pos"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "in2",
												"comment" : "mouse_click"
											}
 ]
									}
,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outletInfo" : 									{
										"IOInfo" : [ 											{
												"type" : "event",
												"index" : 1,
												"tag" : "out1",
												"comment" : "points"
											}
, 											{
												"type" : "event",
												"index" : 2,
												"tag" : "out2",
												"comment" : "distances"
											}
, 											{
												"type" : "signal",
												"index" : 3,
												"tag" : "out3",
												"comment" : ""
											}
, 											{
												"type" : "signal",
												"index" : 4,
												"tag" : "out4",
												"comment" : ""
											}
 ]
									}
,
									"outlettype" : [ "", "", "signal", "signal", "list" ],
									"patching_rect" : [ 785.0, 119.0, 213.0, 22.0 ],
									"rnboattrcache" : 									{

									}
,
									"rnboversion" : "1.3.3",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "rnbo~[12]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "rnbo~[9]",
											"parameter_type" : 3
										}

									}
,
									"saved_object_attributes" : 									{
										"optimization" : "O1",
										"parameter_enable" : 1,
										"uuid" : "c3b2cd1f-d5fe-11ef-8d1f-1068384f72df"
									}
,
									"snapshot" : 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "snapshotlist",
										"origin" : "rnbo~",
										"type" : "list",
										"subtype" : "Undefined",
										"embed" : 1,
										"snapshot" : 										{
											"__presetid" : "sound_generation"
										}
,
										"snapshotlist" : 										{
											"current_snapshot" : 0,
											"entries" : [ 												{
													"filetype" : "C74Snapshot",
													"version" : 2,
													"minorversion" : 0,
													"name" : "sound_generation",
													"origin" : "sound_generation",
													"type" : "rnbo",
													"subtype" : "",
													"embed" : 0,
													"snapshot" : 													{
														"__presetid" : "sound_generation"
													}
,
													"fileref" : 													{
														"name" : "sound_generation",
														"filename" : "sound_generation.maxsnap",
														"filepath" : "~/Documents/Max 8/Snapshots",
														"filepos" : -1,
														"snapshotfileid" : "c39751ef8554b4966b41d3068da2675a"
													}

												}
 ]
										}

									}
,
									"text" : "rnbo~ sound_generation @autobuild 0",
									"varname" : "rnbo~[4]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 1022.5, 147.0, 1127.5, 147.0 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 23.5, 104.0, 794.5, 104.0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"midpoints" : [ 23.5, 174.0, 361.5, 174.0 ],
									"order" : 4,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 23.5, 174.0, 795.5, 174.0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"midpoints" : [ 23.5, 106.0, 577.5, 106.0 ],
									"order" : 3,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"midpoints" : [ 23.5, 106.0, 143.5, 106.0 ],
									"order" : 7,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"midpoints" : [ 23.5, 174.0, 143.5, 174.0 ],
									"order" : 6,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"midpoints" : [ 23.5, 106.0, 361.5, 106.0 ],
									"order" : 5,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"midpoints" : [ 23.5, 174.0, 577.5, 174.0 ],
									"order" : 2,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 1 ],
									"midpoints" : [ 54.5, 174.0, 425.833333333333314, 174.0 ],
									"order" : 3,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"midpoints" : [ 54.5, 174.0, 859.833333333333371, 174.0 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 1 ],
									"midpoints" : [ 54.5, 106.0, 641.833333333333371, 106.0 ],
									"order" : 2,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 1 ],
									"midpoints" : [ 54.5, 106.0, 208.166666666666686, 106.0 ],
									"order" : 6,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 1 ],
									"midpoints" : [ 54.5, 174.0, 208.166666666666686, 174.0 ],
									"order" : 5,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 1 ],
									"midpoints" : [ 54.5, 106.0, 420.833333333333371, 106.0 ],
									"order" : 4,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 1 ],
									"midpoints" : [ 54.5, 174.0, 641.833333333333371, 174.0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 4 ],
									"midpoints" : [ 940.0, 157.0, 1169.5, 157.0 ],
									"source" : [ "obj-44", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 4 ],
									"midpoints" : [ 891.5, 157.0, 1064.5, 157.0 ],
									"source" : [ "obj-44", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"midpoints" : [ 117.5, 106.0, 988.5, 106.0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 3 ],
									"midpoints" : [ 117.5, 174.0, 554.5, 174.0 ],
									"order" : 4,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 3 ],
									"midpoints" : [ 117.5, 174.0, 988.5, 174.0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 3 ],
									"midpoints" : [ 117.5, 106.0, 770.5, 106.0 ],
									"order" : 3,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 3 ],
									"midpoints" : [ 117.5, 106.0, 337.5, 106.0 ],
									"order" : 7,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 3 ],
									"midpoints" : [ 117.5, 174.0, 337.5, 174.0 ],
									"order" : 6,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 3 ],
									"midpoints" : [ 117.5, 106.0, 539.5, 106.0 ],
									"order" : 5,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 3 ],
									"midpoints" : [ 117.5, 174.0, 770.5, 174.0 ],
									"order" : 2,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 86.5, 106.0, 794.5, 106.0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 2 ],
									"midpoints" : [ 86.5, 174.0, 490.166666666666629, 174.0 ],
									"order" : 4,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"midpoints" : [ 86.5, 174.0, 924.166666666666629, 174.0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 2 ],
									"midpoints" : [ 86.5, 106.0, 706.166666666666629, 106.0 ],
									"order" : 3,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 2 ],
									"midpoints" : [ 86.5, 106.0, 272.833333333333371, 106.0 ],
									"order" : 7,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 2 ],
									"midpoints" : [ 86.5, 174.0, 272.833333333333371, 174.0 ],
									"order" : 6,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 2 ],
									"midpoints" : [ 86.5, 106.0, 480.166666666666686, 106.0 ],
									"order" : 5,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 2 ],
									"midpoints" : [ 86.5, 174.0, 706.166666666666629, 174.0 ],
									"order" : 2,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 6 ],
									"midpoints" : [ 506.25, 223.0, 1190.5, 223.0 ],
									"source" : [ "obj-66", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 6 ],
									"midpoints" : [ 458.0, 223.0, 1085.5, 223.0 ],
									"source" : [ "obj-66", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 8 ],
									"midpoints" : [ 940.25, 223.0, 1211.5, 223.0 ],
									"source" : [ "obj-7", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 8 ],
									"midpoints" : [ 892.0, 223.0, 1106.5, 223.0 ],
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 3 ],
									"midpoints" : [ 722.25, 157.0, 1159.0, 157.0 ],
									"source" : [ "obj-73", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 3 ],
									"midpoints" : [ 674.0, 157.0, 1054.0, 157.0 ],
									"source" : [ "obj-73", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"midpoints" : [ 289.0, 157.0, 1138.0, 157.0 ],
									"source" : [ "obj-75", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"midpoints" : [ 240.5, 157.0, 1033.0, 157.0 ],
									"source" : [ "obj-75", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 5 ],
									"midpoints" : [ 289.0, 223.0, 1180.0, 223.0 ],
									"source" : [ "obj-76", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 5 ],
									"midpoints" : [ 240.5, 223.0, 1075.0, 223.0 ],
									"source" : [ "obj-76", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"midpoints" : [ 495.0, 157.0, 1148.5, 157.0 ],
									"source" : [ "obj-79", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 2 ],
									"midpoints" : [ 450.5, 157.0, 1043.5, 157.0 ],
									"source" : [ "obj-79", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 7 ],
									"midpoints" : [ 722.25, 223.0, 1201.0, 223.0 ],
									"source" : [ "obj-80", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 7 ],
									"midpoints" : [ 674.0, 223.0, 1096.0, 223.0 ],
									"source" : [ "obj-80", 2 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 874.0, 450.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p moduleTest"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 874.0, 485.399999999999977, 51.599999999999994, 51.599999999999994 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New",
					"fontsize" : 12.0,
					"id" : "obj-114",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1036.0, 256.0, 75.0, 20.0 ],
					"text" : "[ click ]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New",
					"fontsize" : 12.0,
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 895.0, 256.0, 139.0, 20.0 ],
					"text" : "[ mouse position ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1048.0, 278.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 914.0, 409.0, 100.0, 22.0 ],
					"text" : "pack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 995.0, 382.0, 39.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 914.0, 382.0, 39.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "pictslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 914.0, 278.0, 100.0, 100.0 ],
					"rightvalue" : 100,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New",
					"fontsize" : 12.0,
					"id" : "obj-134",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 215.0, 200.0, 20.0 ],
					"text" : "module testing ________"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 292.0, 248.200000000000045, 51.5, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 325.0, 305.200000000000045, 81.0, 22.0 ],
					"text" : "numpoints $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 111.0, 237.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 204.0, 146.0, 51.0, 22.0 ],
									"text" : "zl mth 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 146.0, 47.0, 22.0 ],
									"text" : "getsize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 176.0, 173.0, 22.0 ],
									"text" : "vexpr $f1 * $f2 @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 50.0, 100.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 139.0, 47.0, 22.0 ],
									"text" : "zl iter 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 261.0, 146.0, 35.0, 22.0 ],
									"text" : "reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 176.0, 240.0, 29.5, 22.0 ],
									"text" : "+ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 134.0, 240.0, 29.5, 22.0 ],
									"text" : "+ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 50.0, 205.0, 61.0, 22.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 266.0, 145.0, 22.0 ],
									"text" : "pack f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 294.0, 151.0, 22.0 ],
									"text" : "paintrect $1 $2 $3 $4 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-53",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-54",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-55",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 348.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"order" : 1,
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 1,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"midpoints" : [ 59.5, 234.0, 143.5, 234.0 ],
									"order" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"midpoints" : [ 101.5, 234.0, 185.5, 234.0 ],
									"order" : 0,
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 2 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 3 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"midpoints" : [ 270.5, 333.0, 59.5, 333.0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"midpoints" : [ 70.0, 129.0, 270.5, 129.0 ],
									"order" : 1,
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"midpoints" : [ 70.0, 129.0, 309.5, 129.0 ],
									"order" : 0,
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"midpoints" : [ 309.5, 333.0, 59.5, 333.0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 78.0, 255.0, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p plotting"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "lcd",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "list", "list", "int", "" ],
					"patching_rect" : [ 78.0, 285.0, 189.0, 189.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 325.0, 278.200000000000045, 37.0, 22.0 ],
					"text" : "zl len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 95,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.0, 340.0, 306.0, 134.0 ],
					"subplots" : [ 						{
							"color" : [ 0.400000005960464, 0.400000005960464, 0.75, 1.0 ],
							"thickness" : 3.0,
							"point_style" : "circle",
							"line_style" : "origin",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [  ],
							"domain_labels" : [  ],
							"range_start" : 0.0,
							"range_end" : 1.0,
							"range_style" : "linear",
							"range_markers" : [  ],
							"range_labels" : [  ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 706.0, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 706.0, 152.0, 95.0, 22.0 ],
					"text" : "prepend karplus"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 282.0, 51.599999999999994, 51.599999999999994 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-29",
					"inletInfo" : 					{
						"IOInfo" : [  ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
, 							{
								"type" : "signal",
								"index" : 2,
								"tag" : "out2",
								"comment" : ""
							}
, 							{
								"type" : "event",
								"index" : 3,
								"tag" : "out3",
								"comment" : "points"
							}
, 							{
								"type" : "event",
								"index" : 4,
								"tag" : "out4",
								"comment" : "distances"
							}
, 							{
								"type" : "event",
								"index" : 5,
								"tag" : "out5",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "signal", "", "", "", "list" ],
					"patching_rect" : [ 13.0, 205.0, 182.0, 22.0 ],
					"rnboattrcache" : 					{
						"LFO" : 						{
							"label" : "LFO",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"delay" : 						{
							"label" : "delay",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"x" : 						{
							"label" : "x",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"distortion" : 						{
							"label" : "distortion",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"chorus" : 						{
							"label" : "chorus",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"reverb" : 						{
							"label" : "reverb",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"karplus" : 						{
							"label" : "karplus",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"y" : 						{
							"label" : "y",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"master" : 						{
							"label" : "master",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"click" : 						{
							"label" : "click",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"filterbank" : 						{
							"label" : "filterbank",
							"isEnum" : 0,
							"parsestring" : ""
						}

					}
,
					"rnboversion" : "1.3.3",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~[1]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "rnbo~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "e9cdabb7-d155-11ef-abb7-1068384f72df"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"reverb" : 							{
								"value" : 1.0
							}
,
							"__presetid" : "chaos_main",
							"x" : 							{
								"value" : 0.4
							}
,
							"click" : 							{
								"value" : 1.0
							}
,
							"y" : 							{
								"value" : 0.76
							}
,
							"filterbank" : 							{
								"value" : 1.0
							}
,
							"LFO" : 							{
								"value" : 1.0
							}
,
							"delay" : 							{
								"value" : 1.0
							}
,
							"chorus" : 							{
								"value" : 1.0
							}
,
							"__sps" : 							{
								"audio" : 								{

								}
,
								"p_obj-12" : 								{

								}
,
								"p_obj-38" : 								{

								}
,
								"p_obj-16" : 								{

								}
,
								"p_obj-48" : 								{

								}
,
								"audio[1]" : 								{

								}
,
								"p_obj-150" : 								{

								}
,
								"p_obj-172" : 								{

								}
,
								"p_obj-28" : 								{

								}
,
								"p_obj-58" : 								{

								}
,
								"p_obj-68" : 								{

								}

							}
,
							"karplus" : 							{
								"value" : 1.0
							}
,
							"master" : 							{
								"value" : 1.0
							}
,
							"distortion" : 							{
								"value" : 1.0
							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "chaos_main",
									"origin" : "chaos_main",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"reverb" : 										{
											"value" : 1.0
										}
,
										"__presetid" : "chaos_main",
										"x" : 										{
											"value" : 0.4
										}
,
										"click" : 										{
											"value" : 1.0
										}
,
										"y" : 										{
											"value" : 0.76
										}
,
										"filterbank" : 										{
											"value" : 1.0
										}
,
										"LFO" : 										{
											"value" : 1.0
										}
,
										"delay" : 										{
											"value" : 1.0
										}
,
										"chorus" : 										{
											"value" : 1.0
										}
,
										"__sps" : 										{
											"audio" : 											{

											}
,
											"p_obj-12" : 											{

											}
,
											"p_obj-38" : 											{

											}
,
											"p_obj-16" : 											{

											}
,
											"p_obj-48" : 											{

											}
,
											"audio[1]" : 											{

											}
,
											"p_obj-150" : 											{

											}
,
											"p_obj-172" : 											{

											}
,
											"p_obj-28" : 											{

											}
,
											"p_obj-58" : 											{

											}
,
											"p_obj-68" : 											{

											}

										}
,
										"karplus" : 										{
											"value" : 1.0
										}
,
										"master" : 										{
											"value" : 1.0
										}
,
										"distortion" : 										{
											"value" : 1.0
										}

									}
,
									"fileref" : 									{
										"name" : "chaos_main",
										"filename" : "chaos_main.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "2e877e67419ffbc3a993a4e20d503c4b"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ chaos_main @autobuild 0",
					"varname" : "rnbo~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 599.0, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 599.0, 152.0, 105.0, 22.0 ],
					"text" : "prepend distortion"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 89.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 160.0, 121.0, 69.0, 22.0 ],
					"text" : "metro 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 513.0, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 513.0, 152.0, 85.0, 22.0 ],
					"text" : "prepend delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 411.0, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.0, 152.0, 105.0, 22.0 ],
					"text" : "prepend filterbank"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 326.0, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 326.0, 152.0, 90.0, 22.0 ],
					"text" : "prepend reverb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 239.0, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 239.0, 152.0, 92.0, 22.0 ],
					"text" : "prepend chorus"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 94.0, 152.0, 62.0, 22.0 ],
					"text" : "prepend y"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 94.0, 121.0, 39.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 152.0, 62.0, 22.0 ],
					"text" : "prepend x"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 13.0, 121.0, 39.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "pictslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 13.0, 13.0, 100.0, 100.0 ],
					"rightvalue" : 100,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 160.0, 152.0, 42.0, 22.0 ],
					"text" : "click 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 1 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-107", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 2 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 3 ],
					"midpoints" : [ 1057.5, 436.949999999999932, 944.25, 436.949999999999932 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 522.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 169.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 715.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 257.5, 480.0, 279.199999999999989, 480.0, 279.199999999999989, 244.0, 125.5, 244.0 ],
					"source" : [ "obj-22", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 608.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 248.5, 105.0, 715.5, 105.0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 248.5, 105.0, 522.5, 105.0 ],
					"order" : 3,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 248.5, 105.0, 608.5, 105.0 ],
					"order" : 2,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 248.5, 105.0, 420.5, 105.0 ],
					"order" : 4,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 248.5, 105.0, 812.5, 105.0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"order" : 6,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"midpoints" : [ 248.5, 105.0, 335.5, 105.0 ],
					"order" : 5,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-29", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 120.299999999999997, 236.0, 301.5, 236.0 ],
					"source" : [ "obj-29", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 420.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 103.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 248.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 335.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"midpoints" : [ 781.0, 372.949999999999932, 903.75, 372.949999999999932 ],
					"source" : [ "obj-66", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 741.5, 372.949999999999932, 883.5, 372.949999999999932 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-67", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 683.5, 412.949999999999932, 883.5, 412.949999999999932 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 812.5, 190.0, 22.5, 190.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 4 ],
					"midpoints" : [ 1122.5, 436.949999999999932, 964.5, 436.949999999999932 ],
					"source" : [ "obj-76", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-167" : [ "rnbo~[11]", "rnbo~[11]", 0 ],
			"obj-29" : [ "rnbo~[1]", "rnbo~[1]", 0 ],
			"obj-59::obj-44" : [ "rnbo~[12]", "rnbo~[9]", 0 ],
			"obj-59::obj-66" : [ "rnbo~[5]", "rnbo~[4]", 0 ],
			"obj-59::obj-7" : [ "rnbo~[8]", "rnbo~[8]", 0 ],
			"obj-59::obj-73" : [ "rnbo~[10]", "rnbo~[10]", 0 ],
			"obj-59::obj-75" : [ "rnbo~", "rnbo~", 0 ],
			"obj-59::obj-76" : [ "rnbo~[2]", "rnbo~[2]", 0 ],
			"obj-59::obj-79" : [ "rnbo~[6]", "rnbo~[6]", 0 ],
			"obj-59::obj-80" : [ "rnbo~[7]", "rnbo~[7]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "LFO_module.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "LFO_module.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "chaos_main.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "chaos_main.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "chaos_main_deprecated.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "chaos_main_deprecated.rnbopat.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "chorus_module.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "chorus_module.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "delay_module.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "delay_module.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "distortion_module.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "distortion_module.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "drumLoop.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "filterbank_module.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "filterbank_module.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "gamelan_2.wav",
				"bootpath" : "~/code/max/rnbo exports/kilter_8.20.24/media",
				"patcherrelativepath" : "../../../../max/rnbo exports/kilter_8.20.24/media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "karplus_module.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "karplus_module.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "reverb_module.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "reverb_module.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "sinc.wav",
				"bootpath" : "~/code/max/resources/go_book_package/GeneratingSoundAndOrganizingTime/media",
				"patcherrelativepath" : "../../../../max/resources/go_book_package/GeneratingSoundAndOrganizingTime/media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "sound_generation.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "sound_generation.rnbopat",
				"bootpath" : "~/code/art/chaos/src/patches",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
