{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 104.0, 723.0, 459.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 14.0,
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
		"subpatcher_template" : "Untitled5_template",
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 433.0, 329.5, 58.0, 20.0 ],
					"text" : "rbfi"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 213.0, 329.5, 58.0, 20.0 ],
					"text" : "xydisplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.5, 35.0, 35.0, 24.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 427.0, 382.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 213.5, 94.0, 87.0 ],
					"text" : "when I made this patch, I created 10 points\n(by just clicking in [xydisplay])"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-15",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 243.0, 100.5, 128.0, 47.0 ],
					"text" : "xydisplay attrs:\ndrawlabels 1, connectpoints 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 112.0, 225.0, 24.0 ],
					"text" : "move 0.87 0.865"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 427.0, 70.0, 98.0, 24.0 ],
					"text" : "prepend move"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 168.666666666666686, 382.0, 178.0, 24.0 ],
					"text" : "0.87 0.865"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-10",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 35.0, 126.0, 121.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 207.0, 35.0, 90.0, 24.0 ],
					"text" : "0 0 9 100000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 207.0, 70.0, 46.0, 24.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"connect_points" : 1,
					"drawlabels" : 1,
					"drawpoint" : 4294967297,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "xydisplay",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 207.0, 157.0, 200.0, 200.0 ],
					"pointdiameter" : 5.0,
					"points" : [ 0.869999980553985, 0.865000003017485, 9, 0.81499998178333, 0.055000021122396, 8, 0.449999989941716, 0.460000012069941, 7, 0.534999988041818, 0.615000008605421, 6, 0.064999998547137, 0.38000001385808, 5, 0.404999990947545, 0.130000019446015, 4, 0.199999995529652, 0.695000006817281, 3, 0.944999978877604, 0.290000015869737, 2, 0.534999988041818, 0.855000003241003, 1, 0.069999998435378, 0.890000002458692, 0 ]
				}

			}
, 			{
				"box" : 				{
					"always_draw_labels" : 34359738368,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "rbfi",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 427.0, 157.0, 200.0, 200.0 ],
					"spaces" : [ "space", 8, 0.199999995529652, 0.715000006370246, "/p0", 0.75, 0.375, 0.1875, 0.0, 3.321928094887363, 20985.923958666666294, 0.05, 0.2, 0, 0.509999988600612, 0.475000011734664, "/p1", 0.75, 0.5625, 0.1875, 0.0, 3.321928094887363, 20985.923958666666294, 0.05, 0.2, 0, 0.914999979548156, 0.69000000692904, "/p2", 0.75, 0.75, 0.1875, 0.0, 3.321928094887363, 20985.923958666666294, 0.05, 0.2, 0, 0.65999998524785, 0.18500001821667, "/p3", 0.5625, 0.75, 0.1875, 0.0, 3.321928094887363, 20985.923958666666294, 0.05, 0.2, 0, 0.209999995306134, 0.205000017769635, "/p4", 0.375, 0.75, 0.1875, 0.0, 3.321928094887363, 20985.923958666666294, 0.05, 0.2, 0, 0.209999995306134, 0.38000001385808, "/p5", 0.1875, 0.75, 0.1875, 0.0, 3.321928094887363, 20985.923958666666294, 0.05, 0.2, 0, 0.809999981895089, 0.435000012628734, "/p6", 0.1875, 0.75, 0.375, 0.0, 3.321928094887363, 20985.923958666666294, 0.05, 0.2, 0, 0.50499998871237, 0.725000006146729, "/p7", 0.1875, 0.75, 0.5625, 0.0, 3.321928094887363, 20985.923958666666294, 0.05, 0.2, 0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"order" : 1,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 337.166666666666686, 367.0, 418.833333333333371, 367.0, 418.833333333333371, 59.0, 436.5, 59.0 ],
					"order" : 0,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "rbfi.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "xydisplay.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
