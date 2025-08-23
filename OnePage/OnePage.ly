\version "2.22.0"
#(ly:set-option 'point-and-click #f)
\include "Amharic3Lyrics.ly"
chorusStr = "Chorus"
\include "Amharic3Music.ly"
\include "../Lib/HymnSetup.ly"

#(set! paper-alist (cons '("my size" . (cons (* <PageWidthmm> mm) (* <PageHeightmm> mm))) paper-alist))
#(set-default-paper-size "my size")
#(set-global-staff-size <MusicFontSize>) 

\layout {
  ragged-right = ##f
  \context {
  \Lyrics
  %\override LyricText #'font-name = #"Times New Roman"
  %\override LyricText #'font-name = #"Bitstream Vera Sans"
  \override LyricText #'font-name = #"Nyala"
  %\override LyricText #'font-size = #+1
  %\override LyricText #'font-series = #'bold
  %\override LyricText #'font-series = #'medium-bold
  %\override LyricText #'font-shape = #'italic
  }
}
\paper {

  two-sided = ##t 
  indent = 0 \mm 

 page-breaking = #ly:page-turn-breaking
% annotate-spacing = ##t
  top-margin = 20\mm
  bottom-margin=20\mm
  inner-margin = 22\mm
  outer-margin = 20\mm
  system-system-spacing =  #'((basic-distance . 6)  (padding . 1) (stretchability . 60) (minimum-distance . 4))
  score-markup-spacing = #'((basic-distance . 8) (padding . 2) (stretchability . 120)(minimum-distance . 4))  
  markup-system-spacing = #'((basic-distance . 6) (padding . 1) (stretchability . 40) (minimum-distance .  3))
  score-system-spacing = #'((basic-distance . 6) (minimum-distance . 1) (padding . 2) (stretchability . 60))  
  markup-markup-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 0) (stretchability . 0))
}

\include "../Lib/HymnCommon.ly"

\bookpart {
\include "../Lib/HymnBookPartSetup.ly"

\markup \column{
    \justify-line {
        \fontsize #6 \bold {1}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ስለየሱስ ብዙ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {More about Jesus (2)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AStaffGroup <<
        \context Staff = AStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AVoiceLyrics \ AxBMusicLyrics
            \context Voice = AVoiceRH \ AxBMusicRH
        >>
     >>
}

        \new Lyrics  = ALyricsA
        \new Lyrics = ALyricsAAlt
        \new Lyrics  = ALyricsB
        \new Lyrics = ALyricsBAlt
        \new Lyrics  = ALyricsC
        \new Lyrics = ALyricsCAlt
        \new Lyrics  = ALyricsD
        \new Lyrics = ALyricsDAlt
        \new Lyrics  = ALyricsE
        \new Lyrics = ALyricsEAlt
        \context Staff = AStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AVoiceLH \AxBMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {2}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ሊረዳን የሚችል አለ?}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Is there anyone can help us (47)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BStaffGroup <<
        \context Staff = BStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BVoiceLyrics \ BxDGMusicLyrics
            \context Voice = BVoiceRH \ BxDGMusicRH
        >>
     >>
}

        \new Lyrics  = BLyricsA
        \new Lyrics = BLyricsAAlt
        \new Lyrics  = BLyricsB
        \new Lyrics = BLyricsBAlt
        \new Lyrics  = BLyricsC
        \new Lyrics = BLyricsCAlt
        \new Lyrics  = BLyricsD
        \new Lyrics = BLyricsDAlt
        \context Staff = BStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BVoiceLH \BxDGMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {3}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {መንገድህን አስተምረኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Teach Me Thy Way (60)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CStaffGroup <<
        \context Staff = CStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CVoiceLyrics \ CxFZMusicLyrics
            \context Voice = CVoiceRH \ CxFZMusicRH
        >>
     >>
}

        \new Lyrics  = CLyricsA
        \new Lyrics = CLyricsAAlt
        \new Lyrics  = CLyricsB
        \new Lyrics = CLyricsBAlt
        \new Lyrics  = CLyricsC
        \new Lyrics = CLyricsCAlt
        \new Lyrics  = CLyricsD
        \new Lyrics = CLyricsDAlt
        \context Staff = CStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CVoiceLH \CxFZMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {4}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ተከተለኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Follow me (84)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DStaffGroup <<
        \context Staff = DStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DVoiceLyrics \ DxHDMusicLyrics
            \context Voice = DVoiceRH \ DxHDMusicRH
        >>
     >>
}

        \new Lyrics  = DLyricsA
        \new Lyrics = DLyricsAAlt
        \new Lyrics  = DLyricsB
        \new Lyrics = DLyricsBAlt
        \new Lyrics  = DLyricsC
        \new Lyrics = DLyricsCAlt
        \new Lyrics  = DLyricsD
        \new Lyrics = DLyricsDAlt
        \context Staff = DStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DVoiceLH \DxHDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {5}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ኢየሱስን በገሊላ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Tune (84)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EStaffGroup <<
        \context Staff = EStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EVoiceLyrics \ ExHDMusicLyrics
            \context Voice = EVoiceRH \ ExHDMusicRH
        >>
     >>
}

        \new Lyrics  = ELyricsA
        \new Lyrics = ELyricsAAlt
        \new Lyrics  = ELyricsB
        \new Lyrics = ELyricsBAlt
        \new Lyrics  = ELyricsC
        \new Lyrics = ELyricsCAlt
        \new Lyrics  = ELyricsD
        \new Lyrics = ELyricsDAlt
        \context Staff = EStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EVoiceLH \ExHDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {6}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ለኔ ነበር?}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Was it for me? (8)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FStaffGroup <<
        \context Staff = FStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FVoiceLyrics \ FxHMusicLyrics
            \context Voice = FVoiceRH \ FxHMusicRH
        >>
     >>
}

        \new Lyrics  = FLyricsA
        \new Lyrics = FLyricsAAlt
        \new Lyrics  = FLyricsB
        \new Lyrics = FLyricsBAlt
        \new Lyrics  = FLyricsC
        \new Lyrics = FLyricsCAlt
        \new Lyrics  = FLyricsD
        \new Lyrics = FLyricsDAlt
        \new Lyrics  = FLyricsE
        \new Lyrics = FLyricsEAlt
        \context Staff = FStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FVoiceLH \FxHMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {7}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {አንድ መንግስት አለ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {There is a Kingdom (51)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GStaffGroup <<
        \context Staff = GStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GVoiceLyrics \ GxEAMusicLyrics
            \context Voice = GVoiceRH \ GxEAMusicRH
        >>
     >>
}

        \new Lyrics  = GLyricsA
        \new Lyrics = GLyricsAAlt
        \new Lyrics  = GLyricsB
        \new Lyrics = GLyricsBAlt
        \new Lyrics  = GLyricsC
        \new Lyrics = GLyricsCAlt
        \new Lyrics  = GLyricsD
        \new Lyrics = GLyricsDAlt
        \context Staff = GStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GVoiceLH \GxEAMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {8}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ጌታ ከኔ ጋር ባይሆን}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {If it had not been the Lord (214)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HStaffGroup <<
        \context Staff = HStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HVoiceLyrics \ HxBADMusicLyrics
            \context Voice = HVoiceRH \ HxBADMusicRH
        >>
     >>
}

        \new Lyrics  = HLyricsA
        \new Lyrics = HLyricsAAlt
        \new Lyrics  = HLyricsB
        \new Lyrics = HLyricsBAlt
        \new Lyrics  = HLyricsC
        \new Lyrics = HLyricsCAlt
        \new Lyrics  = HLyricsD
        \new Lyrics = HLyricsDAlt
        \context Staff = HStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HVoiceLH \HxBADMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {9}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ወደ አንተ እንመጣለን}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Lord, in our need (230)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IStaffGroup <<
        \context Staff = IStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IVoiceLyrics \ IxBCZMusicLyrics
            \context Voice = IVoiceRH \ IxBCZMusicRH
        >>
     >>
}

        \new Lyrics  = ILyricsA
        \new Lyrics = ILyricsAAlt
        \new Lyrics  = ILyricsB
        \new Lyrics = ILyricsBAlt
        \new Lyrics  = ILyricsC
        \new Lyrics = ILyricsCAlt
        \new Lyrics  = ILyricsD
        \new Lyrics = ILyricsDAlt
        \new Lyrics  = ILyricsE
        \new Lyrics = ILyricsEAlt
        \context Staff = IStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IVoiceLH \IxBCZMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {10}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ጌታዬ ሆይ ተናገር}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Speak to my soul (231)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZStaffGroup <<
        \context Staff = AZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZVoiceLyrics \ AZxBCAMusicLyrics
            \context Voice = AZVoiceRH \ AZxBCAMusicRH
        >>
     >>
}

        \new Lyrics  = AZLyricsA
        \new Lyrics = AZLyricsAAlt
        \new Lyrics  = AZLyricsB
        \new Lyrics = AZLyricsBAlt
        \new Lyrics  = AZLyricsC
        \new Lyrics = AZLyricsCAlt
        \new Lyrics  = AZLyricsD
        \new Lyrics = AZLyricsDAlt
        \context Staff = AZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZVoiceLH \AZxBCAMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {11}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ቅርብ ልንጓዝ!}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Oh! for a closer walk with God (266)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAStaffGroup <<
        \context Staff = AAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAVoiceLyrics \ AAxBFFMusicLyrics
            \context Voice = AAVoiceRH \ AAxBFFMusicRH
        >>
     >>
}

        \new Lyrics  = AALyricsA
        \new Lyrics = AALyricsAAlt
        \new Lyrics  = AALyricsB
        \new Lyrics = AALyricsBAlt
        \new Lyrics  = AALyricsC
        \new Lyrics = AALyricsCAlt
        \new Lyrics  = AALyricsD
        \new Lyrics = AALyricsDAlt
        \context Staff = AAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAVoiceLH \AAxBFFMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {12}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {እንደ ኢየሱስ የለም}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {There is no friend like Jesus (27)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABStaffGroup <<
        \context Staff = ABStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABVoiceLyrics \ ABxBGMusicLyrics
            \context Voice = ABVoiceRH \ ABxBGMusicRH
        >>
     >>
}

        \new Lyrics  = ABLyricsA
        \new Lyrics = ABLyricsAAlt
        \new Lyrics  = ABLyricsB
        \new Lyrics = ABLyricsBAlt
        \new Lyrics  = ABLyricsC
        \new Lyrics = ABLyricsCAlt
        \context Staff = ABStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABVoiceLH \ABxBGMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {13}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የተሰቀለው ጌታ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Thy bleeding feet (169)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACStaffGroup <<
        \context Staff = ACStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACVoiceLyrics \ ACxAFIMusicLyrics
            \context Voice = ACVoiceRH \ ACxAFIMusicRH
        >>
     >>
}

        \new Lyrics  = ACLyricsA
        \new Lyrics = ACLyricsAAlt
        \new Lyrics  = ACLyricsB
        \new Lyrics = ACLyricsBAlt
        \new Lyrics  = ACLyricsC
        \new Lyrics = ACLyricsCAlt
        \new Lyrics  = ACLyricsD
        \new Lyrics = ACLyricsDAlt
        \new Lyrics  = ACLyricsE
        \new Lyrics = ACLyricsEAlt
        \context Staff = ACStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACVoiceLH \ACxAFIMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {14}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ጌታ ሆይ ወዳንተ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Nearer still nearer (125)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADStaffGroup <<
        \context Staff = ADStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADVoiceLyrics \ ADxABEMusicLyrics
            \context Voice = ADVoiceRH \ ADxABEMusicRH
        >>
     >>
}

        \new Lyrics  = ADLyricsA
        \new Lyrics = ADLyricsAAlt
        \new Lyrics  = ADLyricsB
        \new Lyrics = ADLyricsBAlt
        \new Lyrics  = ADLyricsC
        \new Lyrics = ADLyricsCAlt
        \new Lyrics  = ADLyricsD
        \new Lyrics = ADLyricsDAlt
        \context Staff = ADStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADVoiceLH \ADxABEMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {15}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {መስቀል ላይ ሳሰላስል}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {When I survey the wondrous cross (6)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEStaffGroup <<
        \context Staff = AEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEVoiceLyrics \ AExFMusicLyrics
            \context Voice = AEVoiceRH \ AExFMusicRH
        >>
     >>
}

        \new Lyrics  = AELyricsA
        \new Lyrics = AELyricsAAlt
        \new Lyrics  = AELyricsB
        \new Lyrics = AELyricsBAlt
        \new Lyrics  = AELyricsC
        \new Lyrics = AELyricsCAlt
        \new Lyrics  = AELyricsD
        \new Lyrics = AELyricsDAlt
        \context Staff = AEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEVoiceLH \AExFMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {16}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ጌታ ሆይ እምነት}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Increase our faith (279)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFStaffGroup <<
        \context Staff = AFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFVoiceLyrics \ AFxBGIMusicLyrics
            \context Voice = AFVoiceRH \ AFxBGIMusicRH
        >>
     >>
}

        \new Lyrics  = AFLyricsA
        \new Lyrics = AFLyricsAAlt
        \new Lyrics  = AFLyricsB
        \new Lyrics = AFLyricsBAlt
        \new Lyrics  = AFLyricsC
        \new Lyrics = AFLyricsCAlt
        \new Lyrics  = AFLyricsD
        \new Lyrics = AFLyricsDAlt
        \new Lyrics  = AFLyricsE
        \new Lyrics = AFLyricsEAlt
        \context Staff = AFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFVoiceLH \AFxBGIMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {17}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ካዳኝ ጋር መጓዝ አለብኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {I must have the Saviour with me (85)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGStaffGroup <<
        \context Staff = AGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGVoiceLyrics \ AGxHEMusicLyrics
            \context Voice = AGVoiceRH \ AGxHEMusicRH
        >>
     >>
}

        \new Lyrics  = AGLyricsA
        \new Lyrics = AGLyricsAAlt
        \new Lyrics  = AGLyricsB
        \new Lyrics = AGLyricsBAlt
        \new Lyrics  = AGLyricsC
        \new Lyrics = AGLyricsCAlt
        \new Lyrics  = AGLyricsD
        \new Lyrics = AGLyricsDAlt
        \new Lyrics  = AGLyricsE
        \new Lyrics = AGLyricsEAlt
        \context Staff = AGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGVoiceLH \AGxHEMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {18}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {አንድ ሕይወት አለኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {I have only one life on the earth (93)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHStaffGroup <<
        \context Staff = AHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHVoiceLyrics \ AHxICMusicLyrics
            \context Voice = AHVoiceRH \ AHxICMusicRH
        >>
     >>
}

        \new Lyrics  = AHLyricsA
        \new Lyrics = AHLyricsAAlt
        \new Lyrics  = AHLyricsB
        \new Lyrics = AHLyricsBAlt
        \new Lyrics  = AHLyricsC
        \new Lyrics = AHLyricsCAlt
        \new Lyrics  = AHLyricsD
        \new Lyrics = AHLyricsDAlt
        \new Lyrics  = AHLyricsE
        \new Lyrics = AHLyricsEAlt
        \context Staff = AHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHVoiceLH \AHxICMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {19}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ከምንም መዳን ይልቃል}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {God gives you the invitation (37)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIStaffGroup <<
        \context Staff = AIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIVoiceLyrics \ AIxCGMusicLyrics
            \context Voice = AIVoiceRH \ AIxCGMusicRH
        >>
     >>
}

        \new Lyrics  = AILyricsA
        \new Lyrics = AILyricsAAlt
        \new Lyrics  = AILyricsB
        \new Lyrics = AILyricsBAlt
        \new Lyrics  = AILyricsC
        \new Lyrics = AILyricsCAlt
        \new Lyrics  = AILyricsD
        \new Lyrics = AILyricsDAlt
        \new Lyrics  = AILyricsE
        \new Lyrics = AILyricsEAlt
        \context Staff = AIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIVoiceLH \AIxCGMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {20}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {በርሱ ኑሩ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Abide in Him (394)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZStaffGroup <<
        \context Staff = BZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZVoiceLyrics \ BZxCIDMusicLyrics
            \context Voice = BZVoiceRH \ BZxCIDMusicRH
        >>
     >>
}

        \new Lyrics  = BZLyricsA
        \new Lyrics = BZLyricsAAlt
        \new Lyrics  = BZLyricsB
        \new Lyrics = BZLyricsBAlt
        \new Lyrics  = BZLyricsC
        \new Lyrics = BZLyricsCAlt
        \new Lyrics  = BZLyricsD
        \new Lyrics = BZLyricsDAlt
        \new Lyrics  = BZLyricsE
        \new Lyrics = BZLyricsEAlt
        \new Lyrics  = BZLyricsF
        \new Lyrics = BZLyricsFAlt
        \context Staff = BZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZVoiceLH \BZxCIDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {21}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ክርስቶስ ዛሬም ያው ነው}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Jesus is still the same (11)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAStaffGroup <<
        \context Staff = BAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAVoiceLyrics \ BAxAAMusicLyrics
            \context Voice = BAVoiceRH \ BAxAAMusicRH
        >>
     >>
}

        \new Lyrics  = BALyricsA
        \new Lyrics = BALyricsAAlt
        \new Lyrics  = BALyricsB
        \new Lyrics = BALyricsBAlt
        \new Lyrics  = BALyricsC
        \new Lyrics = BALyricsCAlt
        \context Staff = BAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAVoiceLH \BAxAAMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {22}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የኢየሱስ ብሩክ ዱካ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Blessèd footprints of my Saviour (81)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBStaffGroup <<
        \context Staff = BBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBVoiceLyrics \ BBxHAMusicLyrics
            \context Voice = BBVoiceRH \ BBxHAMusicRH
        >>
     >>
}

        \new Lyrics  = BBLyricsA
        \new Lyrics = BBLyricsAAlt
        \new Lyrics  = BBLyricsB
        \new Lyrics = BBLyricsBAlt
        \new Lyrics  = BBLyricsC
        \new Lyrics = BBLyricsCAlt
        \new Lyrics  = BBLyricsD
        \new Lyrics = BBLyricsDAlt
        \new Lyrics  = BBLyricsE
        \new Lyrics = BBLyricsEAlt
        \context Staff = BBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBVoiceLH \BBxHAMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {23}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {በጊዜ፤ ንቁ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Life at best is very brief (102)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCStaffGroup <<
        \context Staff = BCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCVoiceLyrics \ BCxAZBMusicLyrics
            \context Voice = BCVoiceRH \ BCxAZBMusicRH
        >>
     >>
}

        \new Lyrics  = BCLyricsA
        \new Lyrics = BCLyricsAAlt
        \new Lyrics  = BCLyricsB
        \new Lyrics = BCLyricsBAlt
        \new Lyrics  = BCLyricsC
        \new Lyrics = BCLyricsCAlt
        \new Lyrics  = BCLyricsD
        \new Lyrics = BCLyricsDAlt
        \new Lyrics  = BCLyricsE
        \new Lyrics = BCLyricsEAlt
        \context Staff = BCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCVoiceLH \BCxAZBMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {24}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ፍላጎት}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {I need Thee every hour (124)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDStaffGroup <<
        \context Staff = BDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDVoiceLyrics \ BDxABDMusicLyrics
            \context Voice = BDVoiceRH \ BDxABDMusicRH
        >>
     >>
}

        \new Lyrics  = BDLyricsA
        \new Lyrics = BDLyricsAAlt
        \new Lyrics  = BDLyricsB
        \new Lyrics = BDLyricsBAlt
        \new Lyrics  = BDLyricsC
        \new Lyrics = BDLyricsCAlt
        \new Lyrics  = BDLyricsD
        \new Lyrics = BDLyricsDAlt
        \new Lyrics  = BDLyricsE
        \new Lyrics = BDLyricsEAlt
        \new Lyrics  = BDLyricsF
        \new Lyrics = BDLyricsFAlt
        \context Staff = BDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDVoiceLH \BDxABDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {25}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {እግዚአብሔር ሆይ፣ በየሱስ ደም በኩል}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Lord, through the Blood (384)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BEStaffGroup <<
        \context Staff = BEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BEVoiceLyrics \ BExCHDMusicLyrics
            \context Voice = BEVoiceRH \ BExCHDMusicRH
        >>
     >>
}

        \new Lyrics  = BELyricsA
        \new Lyrics = BELyricsAAlt
        \new Lyrics  = BELyricsB
        \new Lyrics = BELyricsBAlt
        \new Lyrics  = BELyricsC
        \new Lyrics = BELyricsCAlt
        \context Staff = BEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BEVoiceLH \BExCHDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {26}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ያንተን ሞገስ እንድናገኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Loved of God (365)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BFStaffGroup <<
        \context Staff = BFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BFVoiceLyrics \ BFxCFEMusicLyrics
            \context Voice = BFVoiceRH \ BFxCFEMusicRH
        >>
     >>
}

        \new Lyrics  = BFLyricsA
        \new Lyrics = BFLyricsAAlt
        \new Lyrics  = BFLyricsB
        \new Lyrics = BFLyricsBAlt
        \new Lyrics  = BFLyricsC
        \new Lyrics = BFLyricsCAlt
        \new Lyrics  = BFLyricsD
        \new Lyrics = BFLyricsDAlt
        \context Staff = BFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BFVoiceLH \BFxCFEMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {27}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ዝም አትበል፣ ተናገረኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Lord, be not silent unto me (227)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BGStaffGroup <<
        \context Staff = BGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BGVoiceLyrics \ BGxBBGMusicLyrics
            \context Voice = BGVoiceRH \ BGxBBGMusicRH
        >>
     >>
}

        \new Lyrics  = BGLyricsA
        \new Lyrics = BGLyricsAAlt
        \new Lyrics  = BGLyricsB
        \new Lyrics = BGLyricsBAlt
        \new Lyrics  = BGLyricsC
        \new Lyrics = BGLyricsCAlt
        \new Lyrics  = BGLyricsD
        \new Lyrics = BGLyricsDAlt
        \new Lyrics  = BGLyricsE
        \new Lyrics = BGLyricsEAlt
        \context Staff = BGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BGVoiceLH \BGxBBGMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {28}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የክርስቶስ ንፁህ ልብ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {I need the mind of Christ (390)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BHStaffGroup <<
        \context Staff = BHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BHVoiceLyrics \ BHxCIZMusicLyrics
            \context Voice = BHVoiceRH \ BHxCIZMusicRH
        >>
     >>
}

        \new Lyrics  = BHLyricsA
        \new Lyrics = BHLyricsAAlt
        \new Lyrics  = BHLyricsB
        \new Lyrics = BHLyricsBAlt
        \new Lyrics  = BHLyricsC
        \new Lyrics = BHLyricsCAlt
        \new Lyrics  = BHLyricsD
        \new Lyrics = BHLyricsDAlt
        \new Lyrics  = BHLyricsE
        \new Lyrics = BHLyricsEAlt
        \context Staff = BHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BHVoiceLH \BHxCIZMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {29}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የተከፈለውን ብናውቅ ኖሮ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {If we but knew (21)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BIStaffGroup <<
        \context Staff = BIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BIVoiceLyrics \ BIxBAMusicLyrics
            \context Voice = BIVoiceRH \ BIxBAMusicRH
        >>
     >>
}

        \new Lyrics  = BILyricsA
        \new Lyrics = BILyricsAAlt
        \new Lyrics  = BILyricsB
        \new Lyrics = BILyricsBAlt
        \new Lyrics  = BILyricsC
        \new Lyrics = BILyricsCAlt
        \new Lyrics  = BILyricsD
        \new Lyrics = BILyricsDAlt
        \context Staff = BIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BIVoiceLH \BIxBAMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {30}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ሕይወትህ ተሰጥቷል!}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Thy life was given for me (26)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CZStaffGroup <<
        \context Staff = CZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CZVoiceLyrics \ CZxBFMusicLyrics
            \context Voice = CZVoiceRH \ CZxBFMusicRH
        >>
     >>
}

        \new Lyrics  = CZLyricsA
        \new Lyrics = CZLyricsAAlt
        \new Lyrics  = CZLyricsB
        \new Lyrics = CZLyricsBAlt
        \new Lyrics  = CZLyricsC
        \new Lyrics = CZLyricsCAlt
        \new Lyrics  = CZLyricsD
        \new Lyrics = CZLyricsDAlt
        \context Staff = CZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CZVoiceLH \CZxBFMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {31}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ጌታዬ፣ አስበኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Amid the trials which I meet (289)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CAStaffGroup <<
        \context Staff = CAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CAVoiceLyrics \ CAxBHIMusicLyrics
            \context Voice = CAVoiceRH \ CAxBHIMusicRH
        >>
     >>
}

        \new Lyrics  = CALyricsA
        \new Lyrics = CALyricsAAlt
        \new Lyrics  = CALyricsB
        \new Lyrics = CALyricsBAlt
        \new Lyrics  = CALyricsC
        \new Lyrics = CALyricsCAlt
        \new Lyrics  = CALyricsD
        \new Lyrics = CALyricsDAlt
        \context Staff = CAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CAVoiceLH \CAxBHIMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {32}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {አዳኜ፣ ነፃ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {From Heaven's glory (20)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CBStaffGroup <<
        \context Staff = CBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CBVoiceLyrics \ CBxBZMusicLyrics
            \context Voice = CBVoiceRH \ CBxBZMusicRH
        >>
     >>
}

        \new Lyrics  = CBLyricsA
        \new Lyrics = CBLyricsAAlt
        \new Lyrics  = CBLyricsB
        \new Lyrics = CBLyricsBAlt
        \new Lyrics  = CBLyricsC
        \new Lyrics = CBLyricsCAlt
        \new Lyrics  = CBLyricsD
        \new Lyrics = CBLyricsDAlt
        \new Lyrics  = CBLyricsE
        \new Lyrics = CBLyricsEAlt
        \context Staff = CBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CBVoiceLH \CBxBZMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {33}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ውድ አዳኝ፣ ብቻዬን አትተውኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Dear Saviour, leave me not alone (344)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CCStaffGroup <<
        \context Staff = CCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CCVoiceLyrics \ CCxCDDMusicLyrics
            \context Voice = CCVoiceRH \ CCxCDDMusicRH
        >>
     >>
}

        \new Lyrics  = CCLyricsA
        \new Lyrics = CCLyricsAAlt
        \new Lyrics  = CCLyricsB
        \new Lyrics = CCLyricsBAlt
        \new Lyrics  = CCLyricsC
        \new Lyrics = CCLyricsCAlt
        \new Lyrics  = CCLyricsD
        \new Lyrics = CCLyricsDAlt
        \context Staff = CCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CCVoiceLH \CCxCDDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {34}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የሱስ ብቻ ያድንኛል}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Where shall I flee for refuge (153)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CDStaffGroup <<
        \context Staff = CDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CDVoiceLyrics \ CDxAECMusicLyrics
            \context Voice = CDVoiceRH \ CDxAECMusicRH
        >>
     >>
}

        \new Lyrics  = CDLyricsA
        \new Lyrics = CDLyricsAAlt
        \new Lyrics  = CDLyricsB
        \new Lyrics = CDLyricsBAlt
        \new Lyrics  = CDLyricsC
        \new Lyrics = CDLyricsCAlt
        \new Lyrics  = CDLyricsD
        \new Lyrics = CDLyricsDAlt
        \new Lyrics  = CDLyricsE
        \new Lyrics = CDLyricsEAlt
        \context Staff = CDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CDVoiceLH \CDxAECMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {35}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {እንደሆንኩኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Just as I am (158)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CEStaffGroup <<
        \context Staff = CEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CEVoiceLyrics \ CExAEHMusicLyrics
            \context Voice = CEVoiceRH \ CExAEHMusicRH
        >>
     >>
}

        \new Lyrics  = CELyricsA
        \new Lyrics = CELyricsAAlt
        \new Lyrics  = CELyricsB
        \new Lyrics = CELyricsBAlt
        \new Lyrics  = CELyricsC
        \new Lyrics = CELyricsCAlt
        \new Lyrics  = CELyricsD
        \new Lyrics = CELyricsDAlt
        \context Staff = CEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CEVoiceLH \CExAEHMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {36}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {በምድር ካለው ሁሉ ይበልጣል}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {God's word is so pure (29)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CFStaffGroup <<
        \context Staff = CFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CFVoiceLyrics \ CFxBIMusicLyrics
            \context Voice = CFVoiceRH \ CFxBIMusicRH
        >>
     >>
}

        \new Lyrics  = CFLyricsA
        \new Lyrics = CFLyricsAAlt
        \new Lyrics  = CFLyricsB
        \new Lyrics = CFLyricsBAlt
        \new Lyrics  = CFLyricsC
        \new Lyrics = CFLyricsCAlt
        \new Lyrics  = CFLyricsD
        \new Lyrics = CFLyricsDAlt
        \new Lyrics  = CFLyricsE
        \new Lyrics = CFLyricsEAlt
        \context Staff = CFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CFVoiceLH \CFxBIMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {37}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የተባረከ ጊዜ ነው}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Rich are the moments of blessing (228)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CGStaffGroup <<
        \context Staff = CGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CGVoiceLyrics \ CGxBBHMusicLyrics
            \context Voice = CGVoiceRH \ CGxBBHMusicRH
        >>
     >>
}

        \new Lyrics  = CGLyricsA
        \new Lyrics = CGLyricsAAlt
        \new Lyrics  = CGLyricsB
        \new Lyrics = CGLyricsBAlt
        \new Lyrics  = CGLyricsC
        \new Lyrics = CGLyricsCAlt
        \new Lyrics  = CGLyricsD
        \new Lyrics = CGLyricsDAlt
        \new Lyrics  = CGLyricsE
        \new Lyrics = CGLyricsEAlt
        \context Staff = CGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CGVoiceLH \CGxBBHMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {38}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {በእግሩ ታች እንድንማር}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Alone with Jesus (198)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CHStaffGroup <<
        \context Staff = CHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CHVoiceLyrics \ CHxAIHMusicLyrics
            \context Voice = CHVoiceRH \ CHxAIHMusicRH
        >>
     >>
}

        \new Lyrics  = CHLyricsA
        \new Lyrics = CHLyricsAAlt
        \new Lyrics  = CHLyricsB
        \new Lyrics = CHLyricsBAlt
        \new Lyrics  = CHLyricsC
        \new Lyrics = CHLyricsCAlt
        \new Lyrics  = CHLyricsD
        \new Lyrics = CHLyricsDAlt
        \context Staff = CHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CHVoiceLH \CHxAIHMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {39}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ኢየሱስ ከሰማይ መጣ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Jesus came from Heaven (9)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CIStaffGroup <<
        \context Staff = CIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CIVoiceLyrics \ CIxIMusicLyrics
            \context Voice = CIVoiceRH \ CIxIMusicRH
        >>
     >>
}

        \new Lyrics  = CILyricsA
        \new Lyrics = CILyricsAAlt
        \new Lyrics  = CILyricsB
        \new Lyrics = CILyricsBAlt
        \new Lyrics  = CILyricsC
        \new Lyrics = CILyricsCAlt
        \new Lyrics  = CILyricsD
        \new Lyrics = CILyricsDAlt
        \new Lyrics  = CILyricsE
        \new Lyrics = CILyricsEAlt
        \context Staff = CIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CIVoiceLH \CIxIMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {40}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ኦ ጌታ አምላኬ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {How great Thou art ()}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DZStaffGroup <<
        \context Staff = DZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DZVoiceLyrics \ DZxMusicLyrics
            \context Voice = DZVoiceRH \ DZxMusicRH
        >>
     >>
}

        \new Lyrics  = DZLyricsA
        \new Lyrics = DZLyricsAAlt
        \new Lyrics  = DZLyricsB
        \new Lyrics = DZLyricsBAlt
        \new Lyrics  = DZLyricsC
        \new Lyrics = DZLyricsCAlt
        \new Lyrics  = DZLyricsD
        \new Lyrics = DZLyricsDAlt
        \new Lyrics  = DZLyricsE
        \new Lyrics = DZLyricsEAlt
        \context Staff = DZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DZVoiceLH \DZxMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {41}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ያምላክ በግ ሆይ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {O Lamb of God (4)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DAStaffGroup <<
        \context Staff = DAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DAVoiceLyrics \ DAxDMusicLyrics
            \context Voice = DAVoiceRH \ DAxDMusicRH
        >>
     >>
}

        \new Lyrics  = DALyricsA
        \new Lyrics = DALyricsAAlt
        \new Lyrics  = DALyricsB
        \new Lyrics = DALyricsBAlt
        \new Lyrics  = DALyricsC
        \new Lyrics = DALyricsCAlt
        \new Lyrics  = DALyricsD
        \new Lyrics = DALyricsDAlt
        \context Staff = DAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DAVoiceLH \DAxDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {42}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የጌታውን መታየት}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Art thou waiting for the day? (401)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DBStaffGroup <<
        \context Staff = DBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DBVoiceLyrics \ DBxDZAMusicLyrics
            \context Voice = DBVoiceRH \ DBxDZAMusicRH
        >>
     >>
}

        \new Lyrics  = DBLyricsA
        \new Lyrics = DBLyricsAAlt
        \new Lyrics  = DBLyricsB
        \new Lyrics = DBLyricsBAlt
        \new Lyrics  = DBLyricsC
        \new Lyrics = DBLyricsCAlt
        \new Lyrics  = DBLyricsD
        \new Lyrics = DBLyricsDAlt
        \new Lyrics  = DBLyricsE
        \new Lyrics = DBLyricsEAlt
        \context Staff = DBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DBVoiceLH \DBxDZAMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {43}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የእግዚአብሔር በግ ሆይ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Wash me, O Lamb of God (17)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DCStaffGroup <<
        \context Staff = DCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DCVoiceLyrics \ DCxAGMusicLyrics
            \context Voice = DCVoiceRH \ DCxAGMusicRH
        >>
     >>
}

        \new Lyrics  = DCLyricsA
        \new Lyrics = DCLyricsAAlt
        \new Lyrics  = DCLyricsB
        \new Lyrics = DCLyricsBAlt
        \new Lyrics  = DCLyricsC
        \new Lyrics = DCLyricsCAlt
        \new Lyrics  = DCLyricsD
        \new Lyrics = DCLyricsDAlt
        \context Staff = DCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DCVoiceLH \DCxAGMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {44}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የእስራኤል እረኛ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Shepherd of Israel (310)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DDStaffGroup <<
        \context Staff = DDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DDVoiceLyrics \ DDxCAZMusicLyrics
            \context Voice = DDVoiceRH \ DDxCAZMusicRH
        >>
     >>
}

        \new Lyrics  = DDLyricsA
        \new Lyrics = DDLyricsAAlt
        \new Lyrics  = DDLyricsB
        \new Lyrics = DDLyricsBAlt
        \new Lyrics  = DDLyricsC
        \new Lyrics = DDLyricsCAlt
        \new Lyrics  = DDLyricsD
        \new Lyrics = DDLyricsDAlt
        \context Staff = DDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DDVoiceLH \DDxCAZMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {45}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ወዳምላክ እንቅረብ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Let us draw near (185)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DEStaffGroup <<
        \context Staff = DEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DEVoiceLyrics \ DExAHEMusicLyrics
            \context Voice = DEVoiceRH \ DExAHEMusicRH
        >>
     >>
}

        \new Lyrics  = DELyricsA
        \new Lyrics = DELyricsAAlt
        \new Lyrics  = DELyricsB
        \new Lyrics = DELyricsBAlt
        \new Lyrics  = DELyricsC
        \new Lyrics = DELyricsCAlt
        \new Lyrics  = DELyricsD
        \new Lyrics = DELyricsDAlt
        \new Lyrics  = DELyricsE
        \new Lyrics = DELyricsEAlt
        \context Staff = DEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DEVoiceLH \DExAHEMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {46}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ስማው፣ ስማው}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Hear the voice of Jesus (127)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DFStaffGroup <<
        \context Staff = DFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DFVoiceLyrics \ DFxABGMusicLyrics
            \context Voice = DFVoiceRH \ DFxABGMusicRH
        >>
     >>
}

        \new Lyrics  = DFLyricsA
        \new Lyrics = DFLyricsAAlt
        \new Lyrics  = DFLyricsB
        \new Lyrics = DFLyricsBAlt
        \new Lyrics  = DFLyricsC
        \new Lyrics = DFLyricsCAlt
        \new Lyrics  = DFLyricsD
        \new Lyrics = DFLyricsDAlt
        \new Lyrics  = DFLyricsE
        \new Lyrics = DFLyricsEAlt
        \context Staff = DFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DFVoiceLH \DFxABGMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {47}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ጸሎት ታላቅ የኃይል ምንጭ ነው}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Prayer is a mighty source (186)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DGStaffGroup <<
        \context Staff = DGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DGVoiceLyrics \ DGxAHFMusicLyrics
            \context Voice = DGVoiceRH \ DGxAHFMusicRH
        >>
     >>
}

        \new Lyrics  = DGLyricsA
        \new Lyrics = DGLyricsAAlt
        \new Lyrics  = DGLyricsB
        \new Lyrics = DGLyricsBAlt
        \new Lyrics  = DGLyricsC
        \new Lyrics = DGLyricsCAlt
        \new Lyrics  = DGLyricsD
        \new Lyrics = DGLyricsDAlt
        \new Lyrics  = DGLyricsE
        \new Lyrics = DGLyricsEAlt
        \new Lyrics  = DGLyricsF
        \new Lyrics = DGLyricsFAlt
        \context Staff = DGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DGVoiceLH \DGxAHFMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {48}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ልብህን ስጠኝ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Give Me Thy Heart (89)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DHStaffGroup <<
        \context Staff = DHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DHVoiceLyrics \ DHxHIMusicLyrics
            \context Voice = DHVoiceRH \ DHxHIMusicRH
        >>
     >>
}

        \new Lyrics  = DHLyricsA
        \new Lyrics = DHLyricsAAlt
        \new Lyrics  = DHLyricsB
        \new Lyrics = DHLyricsBAlt
        \new Lyrics  = DHLyricsC
        \new Lyrics = DHLyricsCAlt
        \new Lyrics  = DHLyricsD
        \new Lyrics = DHLyricsDAlt
        \context Staff = DHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DHVoiceLH \DHxHIMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {49}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የእረኛው ድምፅ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {The voice of the Shepherd (116)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DIStaffGroup <<
        \context Staff = DIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DIVoiceLyrics \ DIxAAFMusicLyrics
            \context Voice = DIVoiceRH \ DIxAAFMusicRH
        >>
     >>
}

        \new Lyrics  = DILyricsA
        \new Lyrics = DILyricsAAlt
        \new Lyrics  = DILyricsB
        \new Lyrics = DILyricsBAlt
        \new Lyrics  = DILyricsC
        \new Lyrics = DILyricsCAlt
        \new Lyrics  = DILyricsD
        \new Lyrics = DILyricsDAlt
        \context Staff = DIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DIVoiceLH \DIxAAFMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {50}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ደግና አዲስ የሆነ ልብ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Give me a heart (215)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EZStaffGroup <<
        \context Staff = EZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EZVoiceLyrics \ EZxBAEMusicLyrics
            \context Voice = EZVoiceRH \ EZxBAEMusicRH
        >>
     >>
}

        \new Lyrics  = EZLyricsA
        \new Lyrics = EZLyricsAAlt
        \new Lyrics  = EZLyricsB
        \new Lyrics = EZLyricsBAlt
        \new Lyrics  = EZLyricsC
        \new Lyrics = EZLyricsCAlt
        \context Staff = EZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EZVoiceLH \EZxBAEMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {51}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ብርሃን የት ነው?}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Is there no light? (36)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EAStaffGroup <<
        \context Staff = EAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EAVoiceLyrics \ EAxCFMusicLyrics
            \context Voice = EAVoiceRH \ EAxCFMusicRH
        >>
     >>
}

        \new Lyrics  = EALyricsA
        \new Lyrics = EALyricsAAlt
        \new Lyrics  = EALyricsB
        \new Lyrics = EALyricsBAlt
        \new Lyrics  = EALyricsC
        \new Lyrics = EALyricsCAlt
        \new Lyrics  = EALyricsD
        \new Lyrics = EALyricsDAlt
        \context Staff = EAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EAVoiceLH \EAxCFMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {52}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {መንገድ አለ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {There is a way (42)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EBStaffGroup <<
        \context Staff = EBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EBVoiceLyrics \ EBxDBMusicLyrics
            \context Voice = EBVoiceRH \ EBxDBMusicRH
        >>
     >>
}

        \new Lyrics  = EBLyricsA
        \new Lyrics = EBLyricsAAlt
        \new Lyrics  = EBLyricsB
        \new Lyrics = EBLyricsBAlt
        \new Lyrics  = EBLyricsC
        \new Lyrics = EBLyricsCAlt
        \new Lyrics  = EBLyricsD
        \new Lyrics = EBLyricsDAlt
        \new Lyrics  = EBLyricsE
        \new Lyrics = EBLyricsEAlt
        \context Staff = EBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EBVoiceLH \EBxDBMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {53}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {በወርቅ፣ በብር ያልተዋጀ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Not redeemed with gold (19)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ECStaffGroup <<
        \context Staff = ECStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ECVoiceLyrics \ ECxAIMusicLyrics
            \context Voice = ECVoiceRH \ ECxAIMusicRH
        >>
     >>
}

        \new Lyrics  = ECLyricsA
        \new Lyrics = ECLyricsAAlt
        \new Lyrics  = ECLyricsB
        \new Lyrics = ECLyricsBAlt
        \new Lyrics  = ECLyricsC
        \new Lyrics = ECLyricsCAlt
        \new Lyrics  = ECLyricsD
        \new Lyrics = ECLyricsDAlt
        \new Lyrics  = ECLyricsE
        \new Lyrics = ECLyricsEAlt
        \context Staff = ECStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ECVoiceLH \ECxAIMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {54}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ወንጌልን ማወቅ ደስ ይላል}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Sweet to know (105)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EDStaffGroup <<
        \context Staff = EDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EDVoiceLyrics \ EDxAZEMusicLyrics
            \context Voice = EDVoiceRH \ EDxAZEMusicRH
        >>
     >>
}

        \new Lyrics  = EDLyricsA
        \new Lyrics = EDLyricsAAlt
        \new Lyrics  = EDLyricsB
        \new Lyrics = EDLyricsBAlt
        \new Lyrics  = EDLyricsC
        \new Lyrics = EDLyricsCAlt
        \new Lyrics  = EDLyricsD
        \new Lyrics = EDLyricsDAlt
        \new Lyrics  = EDLyricsE
        \new Lyrics = EDLyricsEAlt
        \context Staff = EDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EDVoiceLH \EDxAZEMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {55}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ኢየሱስ ሆይ፣ አንተን ሳስብ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Jesus the very thought of Thee (13)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EEStaffGroup <<
        \context Staff = EEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EEVoiceLyrics \ EExACMusicLyrics
            \context Voice = EEVoiceRH \ EExACMusicRH
        >>
     >>
}

        \new Lyrics  = EELyricsA
        \new Lyrics = EELyricsAAlt
        \new Lyrics  = EELyricsB
        \new Lyrics = EELyricsBAlt
        \new Lyrics  = EELyricsC
        \new Lyrics = EELyricsCAlt
        \new Lyrics  = EELyricsD
        \new Lyrics = EELyricsDAlt
        \new Lyrics  = EELyricsE
        \new Lyrics = EELyricsEAlt
        \context Staff = EEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EEVoiceLH \EExACMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {56}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ልቤ ዐረፈ፣ አምላክ ሆይ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {My heart is resting (244)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EFStaffGroup <<
        \context Staff = EFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EFVoiceLyrics \ EFxBDDMusicLyrics
            \context Voice = EFVoiceRH \ EFxBDDMusicRH
        >>
     >>
}

        \new Lyrics  = EFLyricsA
        \new Lyrics = EFLyricsAAlt
        \new Lyrics  = EFLyricsB
        \new Lyrics = EFLyricsBAlt
        \new Lyrics  = EFLyricsC
        \new Lyrics = EFLyricsCAlt
        \context Staff = EFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EFVoiceLH \EFxBDDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {57}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ጌታ ሆይ ወደ ማን እንሂድ?}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {To whom, Lord, shall we go? (69)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EGStaffGroup <<
        \context Staff = EGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EGVoiceLyrics \ EGxFIMusicLyrics
            \context Voice = EGVoiceRH \ EGxFIMusicRH
        >>
     >>
}

        \new Lyrics  = EGLyricsA
        \new Lyrics = EGLyricsAAlt
        \new Lyrics  = EGLyricsB
        \new Lyrics = EGLyricsBAlt
        \new Lyrics  = EGLyricsC
        \new Lyrics = EGLyricsCAlt
        \new Lyrics  = EGLyricsD
        \new Lyrics = EGLyricsDAlt
        \context Staff = EGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EGVoiceLH \EGxFIMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {58}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ያንን ቀን መቼም አልረሳም}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {I never can forget the day (284)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EHStaffGroup <<
        \context Staff = EHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EHVoiceLyrics \ EHxBHDMusicLyrics
            \context Voice = EHVoiceRH \ EHxBHDMusicRH
        >>
     >>
}

        \new Lyrics  = EHLyricsA
        \new Lyrics = EHLyricsAAlt
        \new Lyrics  = EHLyricsB
        \new Lyrics = EHLyricsBAlt
        \new Lyrics  = EHLyricsC
        \new Lyrics = EHLyricsCAlt
        \new Lyrics  = EHLyricsD
        \new Lyrics = EHLyricsDAlt
        \new Lyrics  = EHLyricsE
        \new Lyrics = EHLyricsEAlt
        \context Staff = EHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EHVoiceLH \EHxBHDMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {59}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የአዳኜ ልብ የዋህ ነው}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {The heart of my Saviour (291)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EIStaffGroup <<
        \context Staff = EIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EIVoiceLyrics \ EIxBIAMusicLyrics
            \context Voice = EIVoiceRH \ EIxBIAMusicRH
        >>
     >>
}

        \new Lyrics  = EILyricsA
        \new Lyrics = EILyricsAAlt
        \new Lyrics  = EILyricsB
        \new Lyrics = EILyricsBAlt
        \new Lyrics  = EILyricsC
        \new Lyrics = EILyricsCAlt
        \context Staff = EIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EIVoiceLH \EIxBIAMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {60}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ፍላጎቴን ታውቃለህ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Lord, my heart's deep need Thou knowest (200)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FZStaffGroup <<
        \context Staff = FZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FZVoiceLyrics \ FZxBZZMusicLyrics
            \context Voice = FZVoiceRH \ FZxBZZMusicRH
        >>
     >>
}

        \new Lyrics  = FZLyricsA
        \new Lyrics = FZLyricsAAlt
        \new Lyrics  = FZLyricsB
        \new Lyrics = FZLyricsBAlt
        \new Lyrics  = FZLyricsC
        \new Lyrics = FZLyricsCAlt
        \new Lyrics  = FZLyricsD
        \new Lyrics = FZLyricsDAlt
        \context Staff = FZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FZVoiceLH \FZxBZZMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {61}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {አሁንም ለዘላለም ነው}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Jesus is our only message (10)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FAStaffGroup <<
        \context Staff = FAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FAVoiceLyrics \ FAxAZMusicLyrics
            \context Voice = FAVoiceRH \ FAxAZMusicRH
        >>
     >>
}

        \new Lyrics  = FALyricsA
        \new Lyrics = FALyricsAAlt
        \new Lyrics  = FALyricsB
        \new Lyrics = FALyricsBAlt
        \new Lyrics  = FALyricsC
        \new Lyrics = FALyricsCAlt
        \new Lyrics  = FALyricsD
        \new Lyrics = FALyricsDAlt
        \new Lyrics  = FALyricsE
        \new Lyrics = FALyricsEAlt
        \context Staff = FAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FAVoiceLH \FAxAZMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {62}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ለምን በጨለማ ልሂድ?}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Why should I walk? (72)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FBStaffGroup <<
        \context Staff = FBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FBVoiceLyrics \ FBxGBMusicLyrics
            \context Voice = FBVoiceRH \ FBxGBMusicRH
        >>
     >>
}

        \new Lyrics  = FBLyricsA
        \new Lyrics = FBLyricsAAlt
        \new Lyrics  = FBLyricsB
        \new Lyrics = FBLyricsBAlt
        \new Lyrics  = FBLyricsC
        \new Lyrics = FBLyricsCAlt
        \new Lyrics  = FBLyricsD
        \new Lyrics = FBLyricsDAlt
        \new Lyrics  = FBLyricsE
        \new Lyrics = FBLyricsEAlt
        \context Staff = FBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FBVoiceLH \FBxGBMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {63}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {ጌታ ሆይ ቀንበርህን ልሸከመው}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Lord, I would take Thy yoke (223)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FCStaffGroup <<
        \context Staff = FCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FCVoiceLyrics \ FCxBBCMusicLyrics
            \context Voice = FCVoiceRH \ FCxBBCMusicRH
        >>
     >>
}

        \new Lyrics  = FCLyricsA
        \new Lyrics = FCLyricsAAlt
        \new Lyrics  = FCLyricsB
        \new Lyrics = FCLyricsBAlt
        \new Lyrics  = FCLyricsC
        \new Lyrics = FCLyricsCAlt
        \new Lyrics  = FCLyricsD
        \new Lyrics = FCLyricsDAlt
        \context Staff = FCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FCVoiceLH \FCxBBCMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {64}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የሱን መንገድ እንወዳለን}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {We love the perfect way (32)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FDStaffGroup <<
        \context Staff = FDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FDVoiceLyrics \ FDxCBMusicLyrics
            \context Voice = FDVoiceRH \ FDxCBMusicRH
        >>
     >>
}

        \new Lyrics  = FDLyricsA
        \new Lyrics = FDLyricsAAlt
        \new Lyrics  = FDLyricsB
        \new Lyrics = FDLyricsBAlt
        \new Lyrics  = FDLyricsC
        \new Lyrics = FDLyricsCAlt
        \new Lyrics  = FDLyricsD
        \new Lyrics = FDLyricsDAlt
        \new Lyrics  = FDLyricsE
        \new Lyrics = FDLyricsEAlt
        \context Staff = FDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FDVoiceLH \FDxCBMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {65}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {የሱስን ታሪክ ቃል ሁሉ}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line {Tell me the story of Jesus (1)}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FEStaffGroup <<
        \context Staff = FEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FEVoiceLyrics \ FExAMusicLyrics
            \context Voice = FEVoiceRH \ FExAMusicRH
        >>
     >>
}

        \new Lyrics  = FELyricsA
        \new Lyrics = FELyricsAAlt
        \new Lyrics  = FELyricsB
        \new Lyrics = FELyricsBAlt
        \new Lyrics  = FELyricsC
        \new Lyrics = FELyricsCAlt
        \new Lyrics  = FELyricsD
        \new Lyrics = FELyricsDAlt
        \context Staff = FEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FEVoiceLH \FExAMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {66}
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \fontsize #6 \center-align \line {}
        }
        \null
    }
    \justify-line {
        \override #'(font-name . "Bitstream Vera Sans, Nyala, Oblique Bold")
        \null\fontsize #-1 \center-align \line { ()}
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FFStaffGroup <<
        \context Staff = FFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FFVoiceLyrics \ FFxMusicLyrics
            \context Voice = FFVoiceRH \ FFxMusicRH
        >>
     >>
}

        \context Staff = FFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FFVoiceLH \FFxMusicLH
        >>
    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}
