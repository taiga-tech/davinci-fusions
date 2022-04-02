{
	Tools = ordered() {
		MediaOut1 = MediaOut {
			CtrlWZoom = false,
			Inputs = {
				Index = Input { Value = "0", },
				Input = Input {
					SourceOp = "Transform_scroler",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 1155, -16.5 } },
		},
		Transform_scroler = Transform {
			NameSet = true,
			Inputs = {
				Center = Input {
					Value = { 0.5, -1.55410270061633 },
					Expression = "temolate.NewControl",
				},
				Input = Input {
					SourceOp = "Merge3",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 1045, -16.5 } },
		},
		Transform_social = Transform {
			NameSet = true,
			Inputs = {
				Center = Input { Value = { 0.705, -11.43102 }, },
				Size = Input { Value = 0.7, },
				Input = Input {
					SourceOp = "Merge_sns",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 935, -49.5 } },
		},
		Merge3 = Merge {
			Inputs = {
				Background = Input {
					SourceOp = "Merge1",
					Source = "Output",
				},
				Foreground = Input {
					SourceOp = "Transform_social",
					Source = "Output",
				},
				PerformDepthMerge = Input { Value = 0, },
			},
			ViewInfo = OperatorInfo { Pos = { 935, -16.5 } },
		},
		Transform_logo = Transform {
			NameSet = true,
			Inputs = {
				Center = Input {
					SourceOp = "Path2",
					Source = "Position",
				},
				Size = Input { Value = 0.45, },
				Input = Input {
					SourceOp = "MediaIn_logo",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 825, 16.5 } },
		},
		Path2 = PolyPath {
			DrawMode = "InsertAndModify",
			CtrlWZoom = false,
			Inputs = {
				Displacement = Input {
					SourceOp = "Path2Displacement",
					Source = "Value",
				},
				PolyLine = Input {
					Value = Polyline {
						Points = {
							{ Linear = true, LockY = true, X = 0, Y = -3.7, RX = -0.104, RY = -1.48029736616688e-16 },
							{ Linear = true, LockY = true, X = -0.312, Y = -3.7, LX = 0.104, LY = 1.48029736616688e-16 }
						}
					},
				},
			},
		},
		Path2Displacement = BezierSpline {
			SplineColor = { Red = 255, Green = 0, Blue = 255 },
			KeyFrames = {
				[2050] = { 0, RH = { 2066.66666666667, 0 }, Flags = { LockedY = true } },
				[2100] = { 1, LH = { 2083.33333333333, 1 }, Flags = { LockedY = true } }
			}
		},
		MediaIn_logo = MediaIn {
			NameSet = true,
			CustomData = { MediaProps = { MEDIA_NUM_LAYERS = 0, MEDIA_FORMAT_TYPE = "PNG", MEDIA_HEIGHT = 1980, MEDIA_LAYER_DESC = {
					}, MEDIA_PAR = 1, MEDIA_PATH = "/Users/Taiga/taiga-tech/Movies/SVG/matelial/logo/logo_r.png", MEDIA_START_FRAME = 0, MEDIA_IS_SOURCE_RES = true, MEDIA_SRC_FRAME_RATE = 60, MEDIA_MARK_OUT = 0, MEDIA_WIDTH = 1980, MEDIA_NUM_FRAMES = 1, MEDIA_MARK_IN = 0, MEDIA_NAME = "logo_r.png" }, },
			Inputs = {
				GlobalOut = Input { Value = 2399, },
				MediaID = Input { Value = "55a2ac67-9422-483f-b2bf-c5e25220e319", },
				AudioTrack = Input { Value = FuID { "Timeline Audio" }, },
				Layer = Input {
					Value = Text {
					},
				},
				ClipTimeEnd = Input { Value = 0, },
				HoldLastFrame = Input { Value = 2399, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
			},
			ViewInfo = OperatorInfo { Pos = { 825, 49.5 } },
		},
		Merge1 = Merge {
			Inputs = {
				Background = Input {
					SourceOp = "temolate",
					Source = "Output",
				},
				Foreground = Input {
					SourceOp = "Transform_logo",
					Source = "Output",
				},
				PerformDepthMerge = Input { Value = 0, },
			},
			ViewInfo = OperatorInfo { Pos = { 825, -16.5 } },
		},
		Merge_sns = Merge {
			NameSet = true,
			Inputs = {
				Background = Input {
					SourceOp = "Transform5",
					Source = "Output",
				},
				Foreground = Input {
					SourceOp = "Transform4",
					Source = "Output",
				},
				Size = Input { Value = 0.97, },
				PerformDepthMerge = Input { Value = 0, },
			},
			ViewInfo = OperatorInfo { Pos = { 935, -82.5 } },
		},
		Transform5 = Transform {
			Inputs = {
				Center = Input { Value = { 0.5, 8.1 }, },
				Input = Input {
					SourceOp = "Merge5",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 825, -82.5 } },
		},
		Transform4 = Transform {
			Inputs = {
				Center = Input { Value = { 0.5, 7.84 }, },
				Input = Input {
					SourceOp = "Merge4",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 1045, -82.5 } },
		},
		Merge5 = Merge {
			Inputs = {
				Background = Input {
					SourceOp = "Transform3",
					Source = "Output",
				},
				Foreground = Input {
					SourceOp = "Transform6",
					Source = "Output",
				},
				PerformDepthMerge = Input { Value = 0, },
			},
			ViewInfo = OperatorInfo { Pos = { 825, -115.5 } },
		},
		Transform6 = Transform {
			Inputs = {
				Center = Input { Value = { 0.75, 0.5 }, },
				Input = Input {
					SourceOp = "twitterID",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 715, -115.5 } },
		},
		Transform2 = Transform {
			Inputs = {
				Center = Input { Value = { 0.75, 0.5 }, },
				Input = Input {
					SourceOp = "instagramID",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 1155, -115.5 } },
		},
		Merge4 = Merge {
			Inputs = {
				Background = Input {
					SourceOp = "Transform1",
					Source = "Output",
				},
				Foreground = Input {
					SourceOp = "Transform2",
					Source = "Output",
				},
				PerformDepthMerge = Input { Value = 0, },
			},
			ViewInfo = OperatorInfo { Pos = { 1045, -115.5 } },
		},
		Transform3 = Transform {
			Inputs = {
				Size = Input { Value = 0.4, },
				ReferenceSize = Input { Value = 1, },
				Input = Input {
					SourceOp = "twitterLogo",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 825, -148.5 } },
		},
		twitterID = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 2399, },
				Width = Input { Value = 3840, },
				Height = Input { Value = 2160, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				StyledText = Input { Value = "@DuelGroup", },
				Font = Input { Value = "Now", },
				Style = Input { Value = "Black", },
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				Start = Input {
					SourceOp = "twitterIDStart",
					Source = "Value",
				},
				End = Input {
					SourceOp = "twitterIDEnd",
					Source = "Value",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 715, -148.5 } },
		},
		twitterIDStart = BezierSpline {
			SplineColor = { Red = 232, Green = 6, Blue = 244 },
			KeyFrames = {
				[2100] = { 0, RH = { 2108.33333333333, 0 }, Flags = { Linear = true } },
				[2125] = { 0, LH = { 2116.66666666667, 0 }, Flags = { Linear = true } }
			}
		},
		twitterIDEnd = BezierSpline {
			SplineColor = { Red = 72, Green = 233, Blue = 54 },
			CtrlWZoom = false,
			KeyFrames = {
				[2100] = { 0, RH = { 2108.33333333333, 0.333333333333333 }, Flags = { Linear = true } },
				[2125] = { 1, LH = { 2116.66666666667, 0.666666666666667 }, Flags = { Linear = true } }
			}
		},
		instagramID = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 2399, },
				Width = Input { Value = 3840, },
				Height = Input { Value = 2160, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				StyledText = Input { Value = "@duelgroup", },
				Font = Input { Value = "Now", },
				Style = Input { Value = "Black", },
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				Start = Input {
					SourceOp = "instagramIDStart",
					Source = "Value",
				},
				End = Input {
					SourceOp = "instagramIDEnd",
					Source = "Value",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 1155, -148.5 } },
		},
		instagramIDStart = BezierSpline {
			SplineColor = { Red = 232, Green = 6, Blue = 244 },
			KeyFrames = {
				[2125] = { 0, RH = { 2133.33333333333, 0 }, Flags = { Linear = true } },
				[2150] = { 0, LH = { 2141.66666666667, 0 }, Flags = { Linear = true } }
			}
		},
		instagramIDEnd = BezierSpline {
			SplineColor = { Red = 72, Green = 233, Blue = 54 },
			CtrlWZoom = false,
			KeyFrames = {
				[2125] = { 0, RH = { 2133.33333333333, 0.333333333333333 }, Flags = { Linear = true } },
				[2150] = { 1, LH = { 2141.66666666667, 0.666666666666667 }, Flags = { Linear = true } }
			}
		},
		Transform1 = Transform {
			Inputs = {
				Size = Input { Value = 0.4, },
				ReferenceSize = Input { Value = 1, },
				Input = Input {
					SourceOp = "instagramLogo",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 1045, -148.5 } },
		},
		temolate = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 2399, },
				Width = Input { Value = 3840, },
				Height = Input { Value = 2160, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				StyledText = Input { Value = "MEMBER\n\n	M.T	@TDS45710060\n	M.M	 @duelgroup_m\n	YUJI	 @4545_416D\n	TABO	 @Taiga_dev\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nEQUIPMENT\n\n	Camera	Insta360 Go 2\n		Gopro Max\n	PC	MacBook Pro 16 Intel core-i7\n		MacBook Pro 14 M1 Pro\n	Keybord	Keychron K2\n	Mouse	Logicool G502\n	Video editing software	DaVinci Resolve17\n	Graphic software	Canva\n		GIMP2\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nwww.duelgroupch.com\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPublic Bata released", },
				Font = Input { Value = "BarlowCondensed Nerd Font", },
				Style = Input { Value = "Light", },
				Size = Input { Value = 0.03, },
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				TabSpacing = Input { Value = 1, },
				Tab1Position = Input { Value = -0.025, },
				Tab1Alignment = Input { Value = 1, },
				Tab2Position = Input { Value = 0.025, },
				Tab2Alignment = Input { Value = -1, },
				NewControl = Input {
					SourceOp = "Path1",
					Source = "Position",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 660, -16.5 } },
			UserControls = ordered() { NewControl = { INP_DefaultX = 0.5, INP_DefaultY = 0.5, LINKID_DataType = "Point", ICS_ControlPage = "Text", INPID_InputControl = "OffsetControl", LINKS_Name = "New Control", } }
		},
		Path1 = PolyPath {
			DrawMode = "InsertAndModify",
			CtrlWZoom = false,
			Inputs = {
				Displacement = Input {
					SourceOp = "Path1Displacement",
					Source = "Value",
				},
				PolyLine = Input {
					Value = Polyline {
						Points = {
							{ Linear = true, LockY = true, X = 0, Y = -2.010743, RX = 0, RY = 0.00992333333333321 },
							{ Linear = true, LockY = true, X = 0, Y = -1.980973, LX = 0, LY = -0.00992333333333321, RX = 0, RY = 0.216573113272457 },
							{ Linear = true, LockY = true, X = 0, Y = -1.33125366018263, LX = 0, LY = -0.216573113272457, RX = 0, RY = 1.56441788672754 },
							{ Linear = true, LockY = true, X = 0, Y = 3.362, LX = 0, LY = -1.56441788672754 }
						}
					},
				},
			},
		},
		Path1Displacement = BezierSpline {
			SplineColor = { Red = 255, Green = 0, Blue = 255 },
			KeyFrames = {
				[50] = { 0, RH = { 144.990497024505, -0.016407547176342 }, Flags = { LockedY = true } },
				[335] = { 0.00554093132688489, LH = { 240.009509360125, -0.0329579756661571 }, RH = { 411.666665489752, 0.0366133345145526 }, Flags = { LockedY = true } },
				[565] = { 0.126469726882036, LH = { 488.333332303533, 0.0780775824742018 }, RH = { 1043.33333470276, 0.428394624670226 }, Flags = { LockedY = true } },
				[2000] = { 1, LH = { 1521.66670376561, 1 }, Flags = { LockedY = true } }
			}
		},
		instagramLogo = MediaIn {
			NameSet = true,
			CustomData = { MediaProps = { MEDIA_NUM_LAYERS = 0, MEDIA_FORMAT_TYPE = "PNG", MEDIA_HEIGHT = 1080, MEDIA_LAYER_DESC = {
					}, MEDIA_PAR = 1, MEDIA_PATH = "/Users/Taiga/taiga-tech/Movies/SVG/matelial/icon/instagram.png", MEDIA_START_FRAME = 0, MEDIA_IS_SOURCE_RES = true, MEDIA_SRC_FRAME_RATE = 60, MEDIA_MARK_OUT = 0, MEDIA_WIDTH = 1080, MEDIA_NUM_FRAMES = 1, MEDIA_MARK_IN = 0, MEDIA_NAME = "instagram.png" }, },
			Inputs = {
				EffectMask = Input {
					SourceOp = "instaRect",
					Source = "Mask",
				},
				GlobalOut = Input { Value = 2399, },
				MediaID = Input { Value = "577782fc-b45b-4189-8300-76fd60848ca1", },
				AudioTrack = Input { Value = FuID { "Timeline Audio" }, },
				Layer = Input {
					Value = Text {
					},
				},
				ClipTimeEnd = Input { Value = 0, },
				HoldLastFrame = Input { Value = 2399, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
			},
			ViewInfo = OperatorInfo { Pos = { 1045, -181.5 } },
		},
		twitterLogo = MediaIn {
			NameSet = true,
			CustomData = { MediaProps = { MEDIA_NUM_LAYERS = 0, MEDIA_FORMAT_TYPE = "PNG", MEDIA_HEIGHT = 1080, MEDIA_LAYER_DESC = {
					}, MEDIA_PAR = 1, MEDIA_PATH = "/Users/Taiga/taiga-tech/Movies/SVG/matelial/icon/twitter.png", MEDIA_START_FRAME = 0, MEDIA_IS_SOURCE_RES = true, MEDIA_SRC_FRAME_RATE = 60, MEDIA_MARK_OUT = 0, MEDIA_WIDTH = 1080, MEDIA_NUM_FRAMES = 1, MEDIA_MARK_IN = 0, MEDIA_NAME = "twitter.png" }, },
			Inputs = {
				EffectMask = Input {
					SourceOp = "twitterRect",
					Source = "Mask",
				},
				GlobalOut = Input { Value = 2399, },
				MediaID = Input { Value = "3c937cde-2bb7-4c21-bd47-7ef4d48a0a87", },
				AudioTrack = Input { Value = FuID { "Timeline Audio" }, },
				Layer = Input {
					Value = Text {
					},
				},
				ClipTimeEnd = Input { Value = 0, },
				HoldLastFrame = Input { Value = 2399, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
			},
			ViewInfo = OperatorInfo { Pos = { 825, -181.5 } },
		},
		twitterRect = RectangleMask {
			NameSet = true,
			Inputs = {
				Level = Input {
					SourceOp = "Rectangle1_1Level",
					Source = "Value",
				},
				Filter = Input { Value = FuID { "Fast Gaussian" }, },
				BorderWidth = Input { Value = 0.2, },
				MaskWidth = Input { Value = 3840, },
				MaskHeight = Input { Value = 2160, },
				PixelAspect = Input { Value = { 1, 1 }, },
				UseFrameFormatSettings = Input { Value = 1, },
				ClippingMode = Input { Value = FuID { "None" }, },
				Width = Input { Value = 1, },
				Height = Input { Value = 1, },
			},
			ViewInfo = OperatorInfo { Pos = { 825, -214.5 } },
		},
		Rectangle1_1Level = BezierSpline {
			SplineColor = { Red = 130, Green = 246, Blue = 132 },
			CtrlWZoom = false,
			NameSet = true,
			KeyFrames = {
				[2075] = { 0, RH = { 2083.33333333333, 0.333333333333333 }, Flags = { Linear = true } },
				[2100] = { 1, LH = { 2091.66666666667, 0.666666666666667 }, Flags = { Linear = true } }
			}
		},
		instaRect = RectangleMask {
			NameSet = true,
			Inputs = {
				Level = Input {
					SourceOp = "instaRectLevel",
					Source = "Value",
				},
				Filter = Input { Value = FuID { "Fast Gaussian" }, },
				BorderWidth = Input { Value = 0.2, },
				MaskWidth = Input { Value = 3840, },
				MaskHeight = Input { Value = 2160, },
				PixelAspect = Input { Value = { 1, 1 }, },
				UseFrameFormatSettings = Input { Value = 1, },
				ClippingMode = Input { Value = FuID { "None" }, },
				Width = Input { Value = 1, },
				Height = Input { Value = 1, },
			},
			ViewInfo = OperatorInfo { Pos = { 1045, -214.5 } },
		},
		instaRectLevel = BezierSpline {
			SplineColor = { Red = 130, Green = 246, Blue = 132 },
			CtrlWZoom = false,
			NameSet = true,
			KeyFrames = {
				[2100] = { 0, RH = { 2108.33333333333, 0.333333333333333 }, Flags = { Linear = true } },
				[2125] = { 1, LH = { 2116.66666666667, 0.666666666666667 }, Flags = { Linear = true } }
			}
		}
	}
}
