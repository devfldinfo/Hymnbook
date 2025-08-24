\version "2.22.0"
#(ly:set-option 'point-and-click #f)
\include "Lyrics.ly"
chorusStr = Chorus
\include "Music.ly"
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
\score {
  <<
    \context StaffGroup = AStaffGroup <<
      \context Staff = AStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = AVoiceLyrics \ AxBAMusicLyrics
        \context Voice = AVoiceRH \ AxBAMusicRH
      >>
      \new Lyrics  = ALyricsA
      \new Lyrics = ALyricsAAlt
      \new Lyrics  = ALyricsB
      \new Lyrics  = ALyricsC
      \new Lyrics = ALyricsCAlt
      \new Lyrics  = ALyricsD
      \new Lyrics = ALyricsDAlt
      \new Lyrics  = ALyricsE
      \new Lyrics = ALyricsEAlt
>>
      \context Staff = AStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = AVoiceLH \AxBAMusicLH
      >>
      \context Lyrics = ALyricsA \lyricsto AVoiceLyrics \AVerseA
      \context Lyrics = ALyricsAAlt \lyricsto AVoiceLyrics \AVerseAAlt
      \context Lyrics = ALyricsB \lyricsto AVoiceLyrics \AChorus
      \context Lyrics = ALyricsC \lyricsto AVoiceLyrics \AVerseB
      \context Lyrics = ALyricsCAlt \lyricsto AVoiceLyrics \AVerseBAlt
      \context Lyrics = ALyricsD \lyricsto AVoiceLyrics \AVerseC
      \context Lyrics = ALyricsDAlt \lyricsto AVoiceLyrics \AVerseCAlt
      \context Lyrics = ALyricsE \lyricsto AVoiceLyrics \AVerseD
      \context Lyrics = ALyricsEAlt \lyricsto AVoiceLyrics \AVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BStaffGroup <<
      \context Staff = BStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BVoiceLyrics \ BxDGBMusicLyrics
        \context Voice = BVoiceRH \ BxDGBMusicRH
      >>
      \new Lyrics  = BLyricsA
      \new Lyrics = BLyricsAAlt
      \new Lyrics  = BLyricsB
      \new Lyrics  = BLyricsC
      \new Lyrics = BLyricsCAlt
      \new Lyrics  = BLyricsD
      \new Lyrics = BLyricsDAlt
>>
      \context Staff = BStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BVoiceLH \BxDGBMusicLH
      >>
      \context Lyrics = BLyricsA \lyricsto BVoiceLyrics \BVerseA
      \context Lyrics = BLyricsAAlt \lyricsto BVoiceLyrics \BVerseAAlt
      \context Lyrics = BLyricsB \lyricsto BVoiceLyrics \BChorus
      \context Lyrics = BLyricsC \lyricsto BVoiceLyrics \BVerseB
      \context Lyrics = BLyricsCAlt \lyricsto BVoiceLyrics \BVerseBAlt
      \context Lyrics = BLyricsD \lyricsto BVoiceLyrics \BVerseC
      \context Lyrics = BLyricsDAlt \lyricsto BVoiceLyrics \BVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CStaffGroup <<
      \context Staff = CStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CVoiceLyrics \ CxFZCMusicLyrics
        \context Voice = CVoiceRH \ CxFZCMusicRH
      >>
      \new Lyrics  = CLyricsA
      \new Lyrics = CLyricsAAlt
      \new Lyrics  = CLyricsB
      \new Lyrics = CLyricsBAlt
      \new Lyrics  = CLyricsC
      \new Lyrics = CLyricsCAlt
      \new Lyrics  = CLyricsD
      \new Lyrics = CLyricsDAlt
>>
      \context Staff = CStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CVoiceLH \CxFZCMusicLH
      >>
      \context Lyrics = CLyricsA \lyricsto CVoiceLyrics \CVerseA
      \context Lyrics = CLyricsAAlt \lyricsto CVoiceLyrics \CVerseAAlt
      \context Lyrics = CLyricsB \lyricsto CVoiceLyrics \CVerseB
      \context Lyrics = CLyricsBAlt \lyricsto CVoiceLyrics \CVerseBAlt
      \context Lyrics = CLyricsC \lyricsto CVoiceLyrics \CVerseC
      \context Lyrics = CLyricsCAlt \lyricsto CVoiceLyrics \CVerseCAlt
      \context Lyrics = CLyricsD \lyricsto CVoiceLyrics \CVerseD
      \context Lyrics = CLyricsDAlt \lyricsto CVoiceLyrics \CVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DStaffGroup <<
      \context Staff = DStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DVoiceLyrics \ DxHDDMusicLyrics
        \context Voice = DVoiceRH \ DxHDDMusicRH
      >>
      \new Lyrics  = DLyricsA
      \new Lyrics = DLyricsAAlt
      \new Lyrics  = DLyricsB
      \new Lyrics = DLyricsBAlt
      \new Lyrics  = DLyricsC
      \new Lyrics = DLyricsCAlt
      \new Lyrics  = DLyricsD
      \new Lyrics = DLyricsDAlt
>>
      \context Staff = DStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DVoiceLH \DxHDDMusicLH
      >>
      \context Lyrics = DLyricsA \lyricsto DVoiceLyrics \DVerseA
      \context Lyrics = DLyricsAAlt \lyricsto DVoiceLyrics \DVerseAAlt
      \context Lyrics = DLyricsB \lyricsto DVoiceLyrics \DVerseB
      \context Lyrics = DLyricsBAlt \lyricsto DVoiceLyrics \DVerseBAlt
      \context Lyrics = DLyricsC \lyricsto DVoiceLyrics \DVerseC
      \context Lyrics = DLyricsCAlt \lyricsto DVoiceLyrics \DVerseCAlt
      \context Lyrics = DLyricsD \lyricsto DVoiceLyrics \DVerseD
      \context Lyrics = DLyricsDAlt \lyricsto DVoiceLyrics \DVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EStaffGroup <<
      \context Staff = EStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EVoiceLyrics \ ExHDEMusicLyrics
        \context Voice = EVoiceRH \ ExHDEMusicRH
      >>
      \new Lyrics  = ELyricsA
      \new Lyrics = ELyricsAAlt
      \new Lyrics  = ELyricsB
      \new Lyrics = ELyricsBAlt
      \new Lyrics  = ELyricsC
      \new Lyrics = ELyricsCAlt
      \new Lyrics  = ELyricsD
      \new Lyrics = ELyricsDAlt
>>
      \context Staff = EStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EVoiceLH \ExHDEMusicLH
      >>
      \context Lyrics = ELyricsA \lyricsto EVoiceLyrics \EVerseA
      \context Lyrics = ELyricsAAlt \lyricsto EVoiceLyrics \EVerseAAlt
      \context Lyrics = ELyricsB \lyricsto EVoiceLyrics \EVerseB
      \context Lyrics = ELyricsBAlt \lyricsto EVoiceLyrics \EVerseBAlt
      \context Lyrics = ELyricsC \lyricsto EVoiceLyrics \EVerseC
      \context Lyrics = ELyricsCAlt \lyricsto EVoiceLyrics \EVerseCAlt
      \context Lyrics = ELyricsD \lyricsto EVoiceLyrics \EVerseD
      \context Lyrics = ELyricsDAlt \lyricsto EVoiceLyrics \EVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = FStaffGroup <<
      \context Staff = FStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = FVoiceLyrics \ FxHFMusicLyrics
        \context Voice = FVoiceRH \ FxHFMusicRH
      >>
      \new Lyrics  = FLyricsA
      \new Lyrics = FLyricsAAlt
      \new Lyrics  = FLyricsB
      \new Lyrics  = FLyricsC
      \new Lyrics = FLyricsCAlt
      \new Lyrics  = FLyricsD
      \new Lyrics = FLyricsDAlt
      \new Lyrics  = FLyricsE
      \new Lyrics = FLyricsEAlt
>>
      \context Staff = FStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = FVoiceLH \FxHFMusicLH
      >>
      \context Lyrics = FLyricsA \lyricsto FVoiceLyrics \FVerseA
      \context Lyrics = FLyricsAAlt \lyricsto FVoiceLyrics \FVerseAAlt
      \context Lyrics = FLyricsB \lyricsto FVoiceLyrics \FChorus
      \context Lyrics = FLyricsC \lyricsto FVoiceLyrics \FVerseB
      \context Lyrics = FLyricsCAlt \lyricsto FVoiceLyrics \FVerseBAlt
      \context Lyrics = FLyricsD \lyricsto FVoiceLyrics \FVerseC
      \context Lyrics = FLyricsDAlt \lyricsto FVoiceLyrics \FVerseCAlt
      \context Lyrics = FLyricsE \lyricsto FVoiceLyrics \FVerseD
      \context Lyrics = FLyricsEAlt \lyricsto FVoiceLyrics \FVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = GStaffGroup <<
      \context Staff = GStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = GVoiceLyrics \ GxEAGMusicLyrics
        \context Voice = GVoiceRH \ GxEAGMusicRH
      >>
      \new Lyrics  = GLyricsA
      \new Lyrics = GLyricsAAlt
      \new Lyrics  = GLyricsB
      \new Lyrics  = GLyricsC
      \new Lyrics = GLyricsCAlt
      \new Lyrics  = GLyricsD
      \new Lyrics = GLyricsDAlt
>>
      \context Staff = GStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = GVoiceLH \GxEAGMusicLH
      >>
      \context Lyrics = GLyricsA \lyricsto GVoiceLyrics \GVerseA
      \context Lyrics = GLyricsAAlt \lyricsto GVoiceLyrics \GVerseAAlt
      \context Lyrics = GLyricsB \lyricsto GVoiceLyrics \GChorus
      \context Lyrics = GLyricsC \lyricsto GVoiceLyrics \GVerseB
      \context Lyrics = GLyricsCAlt \lyricsto GVoiceLyrics \GVerseBAlt
      \context Lyrics = GLyricsD \lyricsto GVoiceLyrics \GVerseC
      \context Lyrics = GLyricsDAlt \lyricsto GVoiceLyrics \GVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = HStaffGroup <<
      \context Staff = HStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = HVoiceLyrics \ HxBADHMusicLyrics
        \context Voice = HVoiceRH \ HxBADHMusicRH
      >>
      \new Lyrics  = HLyricsA
      \new Lyrics = HLyricsAAlt
      \new Lyrics  = HLyricsB
      \new Lyrics = HLyricsBAlt
      \new Lyrics  = HLyricsC
      \new Lyrics = HLyricsCAlt
      \new Lyrics  = HLyricsD
      \new Lyrics = HLyricsDAlt
>>
      \context Staff = HStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = HVoiceLH \HxBADHMusicLH
      >>
      \context Lyrics = HLyricsA \lyricsto HVoiceLyrics \HVerseA
      \context Lyrics = HLyricsAAlt \lyricsto HVoiceLyrics \HVerseAAlt
      \context Lyrics = HLyricsB \lyricsto HVoiceLyrics \HVerseB
      \context Lyrics = HLyricsBAlt \lyricsto HVoiceLyrics \HVerseBAlt
      \context Lyrics = HLyricsC \lyricsto HVoiceLyrics \HVerseC
      \context Lyrics = HLyricsCAlt \lyricsto HVoiceLyrics \HVerseCAlt
      \context Lyrics = HLyricsD \lyricsto HVoiceLyrics \HVerseD
      \context Lyrics = HLyricsDAlt \lyricsto HVoiceLyrics \HVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = IStaffGroup <<
      \context Staff = IStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = IVoiceLyrics \ IxBCZIMusicLyrics
        \context Voice = IVoiceRH \ IxBCZIMusicRH
      >>
      \new Lyrics  = ILyricsA
      \new Lyrics = ILyricsAAlt
      \new Lyrics  = ILyricsB
      \new Lyrics  = ILyricsC
      \new Lyrics = ILyricsCAlt
      \new Lyrics  = ILyricsD
      \new Lyrics = ILyricsDAlt
      \new Lyrics  = ILyricsE
      \new Lyrics = ILyricsEAlt
>>
      \context Staff = IStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = IVoiceLH \IxBCZIMusicLH
      >>
      \context Lyrics = ILyricsA \lyricsto IVoiceLyrics \IVerseA
      \context Lyrics = ILyricsAAlt \lyricsto IVoiceLyrics \IVerseAAlt
      \context Lyrics = ILyricsB \lyricsto IVoiceLyrics \IChorus
      \context Lyrics = ILyricsC \lyricsto IVoiceLyrics \IVerseB
      \context Lyrics = ILyricsCAlt \lyricsto IVoiceLyrics \IVerseBAlt
      \context Lyrics = ILyricsD \lyricsto IVoiceLyrics \IVerseC
      \context Lyrics = ILyricsDAlt \lyricsto IVoiceLyrics \IVerseCAlt
      \context Lyrics = ILyricsE \lyricsto IVoiceLyrics \IVerseD
      \context Lyrics = ILyricsEAlt \lyricsto IVoiceLyrics \IVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = AZStaffGroup <<
      \context Staff = AZStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = AZVoiceLyrics \ AZxBCAAZMusicLyrics
        \context Voice = AZVoiceRH \ AZxBCAAZMusicRH
      >>
      \new Lyrics  = AZLyricsA
      \new Lyrics = AZLyricsAAlt
      \new Lyrics  = AZLyricsB
      \new Lyrics  = AZLyricsC
      \new Lyrics = AZLyricsCAlt
      \new Lyrics  = AZLyricsD
      \new Lyrics = AZLyricsDAlt
>>
      \context Staff = AZStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = AZVoiceLH \AZxBCAAZMusicLH
      >>
      \context Lyrics = AZLyricsA \lyricsto AZVoiceLyrics \AZVerseA
      \context Lyrics = AZLyricsAAlt \lyricsto AZVoiceLyrics \AZVerseAAlt
      \context Lyrics = AZLyricsB \lyricsto AZVoiceLyrics \AZChorus
      \context Lyrics = AZLyricsC \lyricsto AZVoiceLyrics \AZVerseB
      \context Lyrics = AZLyricsCAlt \lyricsto AZVoiceLyrics \AZVerseBAlt
      \context Lyrics = AZLyricsD \lyricsto AZVoiceLyrics \AZVerseC
      \context Lyrics = AZLyricsDAlt \lyricsto AZVoiceLyrics \AZVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = AAStaffGroup <<
      \context Staff = AAStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = AAVoiceLyrics \ AAxBFFAAMusicLyrics
        \context Voice = AAVoiceRH \ AAxBFFAAMusicRH
      >>
      \new Lyrics  = AALyricsA
      \new Lyrics = AALyricsAAlt
      \new Lyrics  = AALyricsB
      \new Lyrics = AALyricsBAlt
      \new Lyrics  = AALyricsC
      \new Lyrics = AALyricsCAlt
      \new Lyrics  = AALyricsD
      \new Lyrics = AALyricsDAlt
>>
      \context Staff = AAStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = AAVoiceLH \AAxBFFAAMusicLH
      >>
      \context Lyrics = AALyricsA \lyricsto AAVoiceLyrics \AAVerseA
      \context Lyrics = AALyricsAAlt \lyricsto AAVoiceLyrics \AAVerseAAlt
      \context Lyrics = AALyricsB \lyricsto AAVoiceLyrics \AAVerseB
      \context Lyrics = AALyricsBAlt \lyricsto AAVoiceLyrics \AAVerseBAlt
      \context Lyrics = AALyricsC \lyricsto AAVoiceLyrics \AAVerseC
      \context Lyrics = AALyricsCAlt \lyricsto AAVoiceLyrics \AAVerseCAlt
      \context Lyrics = AALyricsD \lyricsto AAVoiceLyrics \AAVerseD
      \context Lyrics = AALyricsDAlt \lyricsto AAVoiceLyrics \AAVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = ABStaffGroup <<
      \context Staff = ABStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = ABVoiceLyrics \ ABxBGABMusicLyrics
        \context Voice = ABVoiceRH \ ABxBGABMusicRH
      >>
      \new Lyrics  = ABLyricsA
      \new Lyrics = ABLyricsAAlt
      \new Lyrics  = ABLyricsB
      \new Lyrics = ABLyricsBAlt
      \new Lyrics  = ABLyricsC
      \new Lyrics = ABLyricsCAlt
>>
      \context Staff = ABStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = ABVoiceLH \ABxBGABMusicLH
      >>
      \context Lyrics = ABLyricsA \lyricsto ABVoiceLyrics \ABVerseA
      \context Lyrics = ABLyricsAAlt \lyricsto ABVoiceLyrics \ABVerseAAlt
      \context Lyrics = ABLyricsB \lyricsto ABVoiceLyrics \ABVerseB
      \context Lyrics = ABLyricsBAlt \lyricsto ABVoiceLyrics \ABVerseBAlt
      \context Lyrics = ABLyricsC \lyricsto ABVoiceLyrics \ABVerseC
      \context Lyrics = ABLyricsCAlt \lyricsto ABVoiceLyrics \ABVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = ACStaffGroup <<
      \context Staff = ACStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = ACVoiceLyrics \ ACxAFIACMusicLyrics
        \context Voice = ACVoiceRH \ ACxAFIACMusicRH
      >>
      \new Lyrics  = ACLyricsA
      \new Lyrics = ACLyricsAAlt
      \new Lyrics  = ACLyricsB
      \new Lyrics  = ACLyricsC
      \new Lyrics = ACLyricsCAlt
      \new Lyrics  = ACLyricsD
      \new Lyrics = ACLyricsDAlt
      \new Lyrics  = ACLyricsE
      \new Lyrics = ACLyricsEAlt
>>
      \context Staff = ACStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = ACVoiceLH \ACxAFIACMusicLH
      >>
      \context Lyrics = ACLyricsA \lyricsto ACVoiceLyrics \ACVerseA
      \context Lyrics = ACLyricsAAlt \lyricsto ACVoiceLyrics \ACVerseAAlt
      \context Lyrics = ACLyricsB \lyricsto ACVoiceLyrics \ACChorus
      \context Lyrics = ACLyricsC \lyricsto ACVoiceLyrics \ACVerseB
      \context Lyrics = ACLyricsCAlt \lyricsto ACVoiceLyrics \ACVerseBAlt
      \context Lyrics = ACLyricsD \lyricsto ACVoiceLyrics \ACVerseC
      \context Lyrics = ACLyricsDAlt \lyricsto ACVoiceLyrics \ACVerseCAlt
      \context Lyrics = ACLyricsE \lyricsto ACVoiceLyrics \ACVerseD
      \context Lyrics = ACLyricsEAlt \lyricsto ACVoiceLyrics \ACVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = ADStaffGroup <<
      \context Staff = ADStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = ADVoiceLyrics \ ADxABEADMusicLyrics
        \context Voice = ADVoiceRH \ ADxABEADMusicRH
      >>
      \new Lyrics  = ADLyricsA
      \new Lyrics = ADLyricsAAlt
      \new Lyrics  = ADLyricsB
      \new Lyrics = ADLyricsBAlt
      \new Lyrics  = ADLyricsC
      \new Lyrics = ADLyricsCAlt
      \new Lyrics  = ADLyricsD
      \new Lyrics = ADLyricsDAlt
>>
      \context Staff = ADStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = ADVoiceLH \ADxABEADMusicLH
      >>
      \context Lyrics = ADLyricsA \lyricsto ADVoiceLyrics \ADVerseA
      \context Lyrics = ADLyricsAAlt \lyricsto ADVoiceLyrics \ADVerseAAlt
      \context Lyrics = ADLyricsB \lyricsto ADVoiceLyrics \ADVerseB
      \context Lyrics = ADLyricsBAlt \lyricsto ADVoiceLyrics \ADVerseBAlt
      \context Lyrics = ADLyricsC \lyricsto ADVoiceLyrics \ADVerseC
      \context Lyrics = ADLyricsCAlt \lyricsto ADVoiceLyrics \ADVerseCAlt
      \context Lyrics = ADLyricsD \lyricsto ADVoiceLyrics \ADVerseD
      \context Lyrics = ADLyricsDAlt \lyricsto ADVoiceLyrics \ADVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = AEStaffGroup <<
      \context Staff = AEStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = AEVoiceLyrics \ AExFAEMusicLyrics
        \context Voice = AEVoiceRH \ AExFAEMusicRH
      >>
      \new Lyrics  = AELyricsA
      \new Lyrics = AELyricsAAlt
      \new Lyrics  = AELyricsB
      \new Lyrics = AELyricsBAlt
      \new Lyrics  = AELyricsC
      \new Lyrics = AELyricsCAlt
      \new Lyrics  = AELyricsD
      \new Lyrics = AELyricsDAlt
>>
      \context Staff = AEStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = AEVoiceLH \AExFAEMusicLH
      >>
      \context Lyrics = AELyricsA \lyricsto AEVoiceLyrics \AEVerseA
      \context Lyrics = AELyricsAAlt \lyricsto AEVoiceLyrics \AEVerseAAlt
      \context Lyrics = AELyricsB \lyricsto AEVoiceLyrics \AEVerseB
      \context Lyrics = AELyricsBAlt \lyricsto AEVoiceLyrics \AEVerseBAlt
      \context Lyrics = AELyricsC \lyricsto AEVoiceLyrics \AEVerseC
      \context Lyrics = AELyricsCAlt \lyricsto AEVoiceLyrics \AEVerseCAlt
      \context Lyrics = AELyricsD \lyricsto AEVoiceLyrics \AEVerseD
      \context Lyrics = AELyricsDAlt \lyricsto AEVoiceLyrics \AEVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = AFStaffGroup <<
      \context Staff = AFStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = AFVoiceLyrics \ AFxBGIAFMusicLyrics
        \context Voice = AFVoiceRH \ AFxBGIAFMusicRH
      >>
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
>>
      \context Staff = AFStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = AFVoiceLH \AFxBGIAFMusicLH
      >>
      \context Lyrics = AFLyricsA \lyricsto AFVoiceLyrics \AFVerseA
      \context Lyrics = AFLyricsAAlt \lyricsto AFVoiceLyrics \AFVerseAAlt
      \context Lyrics = AFLyricsB \lyricsto AFVoiceLyrics \AFVerseB
      \context Lyrics = AFLyricsBAlt \lyricsto AFVoiceLyrics \AFVerseBAlt
      \context Lyrics = AFLyricsC \lyricsto AFVoiceLyrics \AFVerseC
      \context Lyrics = AFLyricsCAlt \lyricsto AFVoiceLyrics \AFVerseCAlt
      \context Lyrics = AFLyricsD \lyricsto AFVoiceLyrics \AFVerseD
      \context Lyrics = AFLyricsDAlt \lyricsto AFVoiceLyrics \AFVerseDAlt
      \context Lyrics = AFLyricsE \lyricsto AFVoiceLyrics \AFVerseE
      \context Lyrics = AFLyricsEAlt \lyricsto AFVoiceLyrics \AFVerseEAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = AGStaffGroup <<
      \context Staff = AGStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = AGVoiceLyrics \ AGxHEAGMusicLyrics
        \context Voice = AGVoiceRH \ AGxHEAGMusicRH
      >>
      \new Lyrics  = AGLyricsA
      \new Lyrics = AGLyricsAAlt
      \new Lyrics  = AGLyricsB
      \new Lyrics  = AGLyricsC
      \new Lyrics = AGLyricsCAlt
      \new Lyrics  = AGLyricsD
      \new Lyrics = AGLyricsDAlt
      \new Lyrics  = AGLyricsE
      \new Lyrics = AGLyricsEAlt
>>
      \context Staff = AGStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = AGVoiceLH \AGxHEAGMusicLH
      >>
      \context Lyrics = AGLyricsA \lyricsto AGVoiceLyrics \AGVerseA
      \context Lyrics = AGLyricsAAlt \lyricsto AGVoiceLyrics \AGVerseAAlt
      \context Lyrics = AGLyricsB \lyricsto AGVoiceLyrics \AGChorus
      \context Lyrics = AGLyricsC \lyricsto AGVoiceLyrics \AGVerseB
      \context Lyrics = AGLyricsCAlt \lyricsto AGVoiceLyrics \AGVerseBAlt
      \context Lyrics = AGLyricsD \lyricsto AGVoiceLyrics \AGVerseC
      \context Lyrics = AGLyricsDAlt \lyricsto AGVoiceLyrics \AGVerseCAlt
      \context Lyrics = AGLyricsE \lyricsto AGVoiceLyrics \AGVerseD
      \context Lyrics = AGLyricsEAlt \lyricsto AGVoiceLyrics \AGVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = AHStaffGroup <<
      \context Staff = AHStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = AHVoiceLyrics \ AHxICAHMusicLyrics
        \context Voice = AHVoiceRH \ AHxICAHMusicRH
      >>
      \new Lyrics  = AHLyricsA
      \new Lyrics = AHLyricsAAlt
      \new Lyrics  = AHLyricsB
      \new Lyrics  = AHLyricsC
      \new Lyrics = AHLyricsCAlt
      \new Lyrics  = AHLyricsD
      \new Lyrics = AHLyricsDAlt
      \new Lyrics  = AHLyricsE
      \new Lyrics = AHLyricsEAlt
>>
      \context Staff = AHStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = AHVoiceLH \AHxICAHMusicLH
      >>
      \context Lyrics = AHLyricsA \lyricsto AHVoiceLyrics \AHVerseA
      \context Lyrics = AHLyricsAAlt \lyricsto AHVoiceLyrics \AHVerseAAlt
      \context Lyrics = AHLyricsB \lyricsto AHVoiceLyrics \AHChorus
      \context Lyrics = AHLyricsC \lyricsto AHVoiceLyrics \AHVerseB
      \context Lyrics = AHLyricsCAlt \lyricsto AHVoiceLyrics \AHVerseBAlt
      \context Lyrics = AHLyricsD \lyricsto AHVoiceLyrics \AHVerseC
      \context Lyrics = AHLyricsDAlt \lyricsto AHVoiceLyrics \AHVerseCAlt
      \context Lyrics = AHLyricsE \lyricsto AHVoiceLyrics \AHVerseD
      \context Lyrics = AHLyricsEAlt \lyricsto AHVoiceLyrics \AHVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = AIStaffGroup <<
      \context Staff = AIStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = AIVoiceLyrics \ AIxCGAIMusicLyrics
        \context Voice = AIVoiceRH \ AIxCGAIMusicRH
      >>
      \new Lyrics  = AILyricsA
      \new Lyrics = AILyricsAAlt
      \new Lyrics  = AILyricsB
      \new Lyrics  = AILyricsC
      \new Lyrics = AILyricsCAlt
      \new Lyrics  = AILyricsD
      \new Lyrics = AILyricsDAlt
      \new Lyrics  = AILyricsE
      \new Lyrics = AILyricsEAlt
>>
      \context Staff = AIStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = AIVoiceLH \AIxCGAIMusicLH
      >>
      \context Lyrics = AILyricsA \lyricsto AIVoiceLyrics \AIVerseA
      \context Lyrics = AILyricsAAlt \lyricsto AIVoiceLyrics \AIVerseAAlt
      \context Lyrics = AILyricsB \lyricsto AIVoiceLyrics \AIChorus
      \context Lyrics = AILyricsC \lyricsto AIVoiceLyrics \AIVerseB
      \context Lyrics = AILyricsCAlt \lyricsto AIVoiceLyrics \AIVerseBAlt
      \context Lyrics = AILyricsD \lyricsto AIVoiceLyrics \AIVerseC
      \context Lyrics = AILyricsDAlt \lyricsto AIVoiceLyrics \AIVerseCAlt
      \context Lyrics = AILyricsE \lyricsto AIVoiceLyrics \AIVerseD
      \context Lyrics = AILyricsEAlt \lyricsto AIVoiceLyrics \AIVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BZStaffGroup <<
      \context Staff = BZStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BZVoiceLyrics \ BZxCIDBZMusicLyrics
        \context Voice = BZVoiceRH \ BZxCIDBZMusicRH
      >>
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
>>
      \context Staff = BZStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BZVoiceLH \BZxCIDBZMusicLH
      >>
      \context Lyrics = BZLyricsA \lyricsto BZVoiceLyrics \BZVerseA
      \context Lyrics = BZLyricsAAlt \lyricsto BZVoiceLyrics \BZVerseAAlt
      \context Lyrics = BZLyricsB \lyricsto BZVoiceLyrics \BZVerseB
      \context Lyrics = BZLyricsBAlt \lyricsto BZVoiceLyrics \BZVerseBAlt
      \context Lyrics = BZLyricsC \lyricsto BZVoiceLyrics \BZVerseC
      \context Lyrics = BZLyricsCAlt \lyricsto BZVoiceLyrics \BZVerseCAlt
      \context Lyrics = BZLyricsD \lyricsto BZVoiceLyrics \BZVerseD
      \context Lyrics = BZLyricsDAlt \lyricsto BZVoiceLyrics \BZVerseDAlt
      \context Lyrics = BZLyricsE \lyricsto BZVoiceLyrics \BZVerseE
      \context Lyrics = BZLyricsEAlt \lyricsto BZVoiceLyrics \BZVerseEAlt
      \context Lyrics = BZLyricsF \lyricsto BZVoiceLyrics \BZVerseF
      \context Lyrics = BZLyricsFAlt \lyricsto BZVoiceLyrics \BZVerseFAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BAStaffGroup <<
      \context Staff = BAStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BAVoiceLyrics \ BAxAABAMusicLyrics
        \context Voice = BAVoiceRH \ BAxAABAMusicRH
      >>
      \new Lyrics  = BALyricsA
      \new Lyrics = BALyricsAAlt
      \new Lyrics  = BALyricsB
      \new Lyrics = BALyricsBAlt
      \new Lyrics  = BALyricsC
      \new Lyrics = BALyricsCAlt
>>
      \context Staff = BAStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BAVoiceLH \BAxAABAMusicLH
      >>
      \context Lyrics = BALyricsA \lyricsto BAVoiceLyrics \BAVerseA
      \context Lyrics = BALyricsAAlt \lyricsto BAVoiceLyrics \BAVerseAAlt
      \context Lyrics = BALyricsB \lyricsto BAVoiceLyrics \BAVerseB
      \context Lyrics = BALyricsBAlt \lyricsto BAVoiceLyrics \BAVerseBAlt
      \context Lyrics = BALyricsC \lyricsto BAVoiceLyrics \BAVerseC
      \context Lyrics = BALyricsCAlt \lyricsto BAVoiceLyrics \BAVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BBStaffGroup <<
      \context Staff = BBStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BBVoiceLyrics \ BBxHABBMusicLyrics
        \context Voice = BBVoiceRH \ BBxHABBMusicRH
      >>
      \new Lyrics  = BBLyricsA
      \new Lyrics = BBLyricsAAlt
      \new Lyrics  = BBLyricsB
      \new Lyrics  = BBLyricsC
      \new Lyrics = BBLyricsCAlt
      \new Lyrics  = BBLyricsD
      \new Lyrics = BBLyricsDAlt
      \new Lyrics  = BBLyricsE
      \new Lyrics = BBLyricsEAlt
>>
      \context Staff = BBStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BBVoiceLH \BBxHABBMusicLH
      >>
      \context Lyrics = BBLyricsA \lyricsto BBVoiceLyrics \BBVerseA
      \context Lyrics = BBLyricsAAlt \lyricsto BBVoiceLyrics \BBVerseAAlt
      \context Lyrics = BBLyricsB \lyricsto BBVoiceLyrics \BBChorus
      \context Lyrics = BBLyricsC \lyricsto BBVoiceLyrics \BBVerseB
      \context Lyrics = BBLyricsCAlt \lyricsto BBVoiceLyrics \BBVerseBAlt
      \context Lyrics = BBLyricsD \lyricsto BBVoiceLyrics \BBVerseC
      \context Lyrics = BBLyricsDAlt \lyricsto BBVoiceLyrics \BBVerseCAlt
      \context Lyrics = BBLyricsE \lyricsto BBVoiceLyrics \BBVerseD
      \context Lyrics = BBLyricsEAlt \lyricsto BBVoiceLyrics \BBVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BCStaffGroup <<
      \context Staff = BCStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BCVoiceLyrics \ BCxAZBBCMusicLyrics
        \context Voice = BCVoiceRH \ BCxAZBBCMusicRH
      >>
      \new Lyrics  = BCLyricsA
      \new Lyrics = BCLyricsAAlt
      \new Lyrics  = BCLyricsB
      \new Lyrics  = BCLyricsC
      \new Lyrics = BCLyricsCAlt
      \new Lyrics  = BCLyricsD
      \new Lyrics = BCLyricsDAlt
      \new Lyrics  = BCLyricsE
      \new Lyrics = BCLyricsEAlt
>>
      \context Staff = BCStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BCVoiceLH \BCxAZBBCMusicLH
      >>
      \context Lyrics = BCLyricsA \lyricsto BCVoiceLyrics \BCVerseA
      \context Lyrics = BCLyricsAAlt \lyricsto BCVoiceLyrics \BCVerseAAlt
      \context Lyrics = BCLyricsB \lyricsto BCVoiceLyrics \BCChorus
      \context Lyrics = BCLyricsC \lyricsto BCVoiceLyrics \BCVerseB
      \context Lyrics = BCLyricsCAlt \lyricsto BCVoiceLyrics \BCVerseBAlt
      \context Lyrics = BCLyricsD \lyricsto BCVoiceLyrics \BCVerseC
      \context Lyrics = BCLyricsDAlt \lyricsto BCVoiceLyrics \BCVerseCAlt
      \context Lyrics = BCLyricsE \lyricsto BCVoiceLyrics \BCVerseD
      \context Lyrics = BCLyricsEAlt \lyricsto BCVoiceLyrics \BCVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BDStaffGroup <<
      \context Staff = BDStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BDVoiceLyrics \ BDxABDBDMusicLyrics
        \context Voice = BDVoiceRH \ BDxABDBDMusicRH
      >>
      \new Lyrics  = BDLyricsA
      \new Lyrics = BDLyricsAAlt
      \new Lyrics  = BDLyricsB
      \new Lyrics  = BDLyricsC
      \new Lyrics = BDLyricsCAlt
      \new Lyrics  = BDLyricsD
      \new Lyrics = BDLyricsDAlt
      \new Lyrics  = BDLyricsE
      \new Lyrics = BDLyricsEAlt
      \new Lyrics  = BDLyricsF
      \new Lyrics = BDLyricsFAlt
>>
      \context Staff = BDStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BDVoiceLH \BDxABDBDMusicLH
      >>
      \context Lyrics = BDLyricsA \lyricsto BDVoiceLyrics \BDVerseA
      \context Lyrics = BDLyricsAAlt \lyricsto BDVoiceLyrics \BDVerseAAlt
      \context Lyrics = BDLyricsB \lyricsto BDVoiceLyrics \BDChorus
      \context Lyrics = BDLyricsC \lyricsto BDVoiceLyrics \BDVerseB
      \context Lyrics = BDLyricsCAlt \lyricsto BDVoiceLyrics \BDVerseBAlt
      \context Lyrics = BDLyricsD \lyricsto BDVoiceLyrics \BDVerseC
      \context Lyrics = BDLyricsDAlt \lyricsto BDVoiceLyrics \BDVerseCAlt
      \context Lyrics = BDLyricsE \lyricsto BDVoiceLyrics \BDVerseD
      \context Lyrics = BDLyricsEAlt \lyricsto BDVoiceLyrics \BDVerseDAlt
      \context Lyrics = BDLyricsF \lyricsto BDVoiceLyrics \BDVerseE
      \context Lyrics = BDLyricsFAlt \lyricsto BDVoiceLyrics \BDVerseEAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BEStaffGroup <<
      \context Staff = BEStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BEVoiceLyrics \ BExCHDBEMusicLyrics
        \context Voice = BEVoiceRH \ BExCHDBEMusicRH
      >>
      \new Lyrics  = BELyricsA
      \new Lyrics = BELyricsAAlt
      \new Lyrics  = BELyricsB
      \new Lyrics = BELyricsBAlt
      \new Lyrics  = BELyricsC
      \new Lyrics = BELyricsCAlt
>>
      \context Staff = BEStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BEVoiceLH \BExCHDBEMusicLH
      >>
      \context Lyrics = BELyricsA \lyricsto BEVoiceLyrics \BEVerseA
      \context Lyrics = BELyricsAAlt \lyricsto BEVoiceLyrics \BEVerseAAlt
      \context Lyrics = BELyricsB \lyricsto BEVoiceLyrics \BEVerseB
      \context Lyrics = BELyricsBAlt \lyricsto BEVoiceLyrics \BEVerseBAlt
      \context Lyrics = BELyricsC \lyricsto BEVoiceLyrics \BEVerseC
      \context Lyrics = BELyricsCAlt \lyricsto BEVoiceLyrics \BEVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BFStaffGroup <<
      \context Staff = BFStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BFVoiceLyrics \ BFxCFEBFMusicLyrics
        \context Voice = BFVoiceRH \ BFxCFEBFMusicRH
      >>
      \new Lyrics  = BFLyricsA
      \new Lyrics = BFLyricsAAlt
      \new Lyrics  = BFLyricsB
      \new Lyrics  = BFLyricsC
      \new Lyrics = BFLyricsCAlt
      \new Lyrics  = BFLyricsD
      \new Lyrics = BFLyricsDAlt
>>
      \context Staff = BFStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BFVoiceLH \BFxCFEBFMusicLH
      >>
      \context Lyrics = BFLyricsA \lyricsto BFVoiceLyrics \BFVerseA
      \context Lyrics = BFLyricsAAlt \lyricsto BFVoiceLyrics \BFVerseAAlt
      \context Lyrics = BFLyricsB \lyricsto BFVoiceLyrics \BFChorus
      \context Lyrics = BFLyricsC \lyricsto BFVoiceLyrics \BFVerseB
      \context Lyrics = BFLyricsCAlt \lyricsto BFVoiceLyrics \BFVerseBAlt
      \context Lyrics = BFLyricsD \lyricsto BFVoiceLyrics \BFVerseC
      \context Lyrics = BFLyricsDAlt \lyricsto BFVoiceLyrics \BFVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BGStaffGroup <<
      \context Staff = BGStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BGVoiceLyrics \ BGxBBGBGMusicLyrics
        \context Voice = BGVoiceRH \ BGxBBGBGMusicRH
      >>
      \new Lyrics  = BGLyricsA
      \new Lyrics = BGLyricsAAlt
      \new Lyrics  = BGLyricsB
      \new Lyrics  = BGLyricsC
      \new Lyrics = BGLyricsCAlt
      \new Lyrics  = BGLyricsD
      \new Lyrics = BGLyricsDAlt
      \new Lyrics  = BGLyricsE
      \new Lyrics = BGLyricsEAlt
>>
      \context Staff = BGStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BGVoiceLH \BGxBBGBGMusicLH
      >>
      \context Lyrics = BGLyricsA \lyricsto BGVoiceLyrics \BGVerseA
      \context Lyrics = BGLyricsAAlt \lyricsto BGVoiceLyrics \BGVerseAAlt
      \context Lyrics = BGLyricsB \lyricsto BGVoiceLyrics \BGChorus
      \context Lyrics = BGLyricsC \lyricsto BGVoiceLyrics \BGVerseB
      \context Lyrics = BGLyricsCAlt \lyricsto BGVoiceLyrics \BGVerseBAlt
      \context Lyrics = BGLyricsD \lyricsto BGVoiceLyrics \BGVerseC
      \context Lyrics = BGLyricsDAlt \lyricsto BGVoiceLyrics \BGVerseCAlt
      \context Lyrics = BGLyricsE \lyricsto BGVoiceLyrics \BGVerseD
      \context Lyrics = BGLyricsEAlt \lyricsto BGVoiceLyrics \BGVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BHStaffGroup <<
      \context Staff = BHStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BHVoiceLyrics \ BHxCIZBHMusicLyrics
        \context Voice = BHVoiceRH \ BHxCIZBHMusicRH
      >>
      \new Lyrics  = BHLyricsA
      \new Lyrics = BHLyricsAAlt
      \new Lyrics  = BHLyricsB
      \new Lyrics  = BHLyricsC
      \new Lyrics = BHLyricsCAlt
      \new Lyrics  = BHLyricsD
      \new Lyrics = BHLyricsDAlt
      \new Lyrics  = BHLyricsE
      \new Lyrics = BHLyricsEAlt
>>
      \context Staff = BHStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BHVoiceLH \BHxCIZBHMusicLH
      >>
      \context Lyrics = BHLyricsA \lyricsto BHVoiceLyrics \BHVerseA
      \context Lyrics = BHLyricsAAlt \lyricsto BHVoiceLyrics \BHVerseAAlt
      \context Lyrics = BHLyricsB \lyricsto BHVoiceLyrics \BHChorus
      \context Lyrics = BHLyricsC \lyricsto BHVoiceLyrics \BHVerseB
      \context Lyrics = BHLyricsCAlt \lyricsto BHVoiceLyrics \BHVerseBAlt
      \context Lyrics = BHLyricsD \lyricsto BHVoiceLyrics \BHVerseC
      \context Lyrics = BHLyricsDAlt \lyricsto BHVoiceLyrics \BHVerseCAlt
      \context Lyrics = BHLyricsE \lyricsto BHVoiceLyrics \BHVerseD
      \context Lyrics = BHLyricsEAlt \lyricsto BHVoiceLyrics \BHVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = BIStaffGroup <<
      \context Staff = BIStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = BIVoiceLyrics \ BIxBABIMusicLyrics
        \context Voice = BIVoiceRH \ BIxBABIMusicRH
      >>
      \new Lyrics  = BILyricsA
      \new Lyrics = BILyricsAAlt
      \new Lyrics  = BILyricsB
      \new Lyrics = BILyricsBAlt
      \new Lyrics  = BILyricsC
      \new Lyrics = BILyricsCAlt
      \new Lyrics  = BILyricsD
      \new Lyrics = BILyricsDAlt
>>
      \context Staff = BIStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = BIVoiceLH \BIxBABIMusicLH
      >>
      \context Lyrics = BILyricsA \lyricsto BIVoiceLyrics \BIVerseA
      \context Lyrics = BILyricsAAlt \lyricsto BIVoiceLyrics \BIVerseAAlt
      \context Lyrics = BILyricsB \lyricsto BIVoiceLyrics \BIVerseB
      \context Lyrics = BILyricsBAlt \lyricsto BIVoiceLyrics \BIVerseBAlt
      \context Lyrics = BILyricsC \lyricsto BIVoiceLyrics \BIVerseC
      \context Lyrics = BILyricsCAlt \lyricsto BIVoiceLyrics \BIVerseCAlt
      \context Lyrics = BILyricsD \lyricsto BIVoiceLyrics \BIVerseD
      \context Lyrics = BILyricsDAlt \lyricsto BIVoiceLyrics \BIVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CZStaffGroup <<
      \context Staff = CZStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CZVoiceLyrics \ CZxBFCZMusicLyrics
        \context Voice = CZVoiceRH \ CZxBFCZMusicRH
      >>
      \new Lyrics  = CZLyricsA
      \new Lyrics = CZLyricsAAlt
      \new Lyrics  = CZLyricsB
      \new Lyrics = CZLyricsBAlt
      \new Lyrics  = CZLyricsC
      \new Lyrics = CZLyricsCAlt
      \new Lyrics  = CZLyricsD
      \new Lyrics = CZLyricsDAlt
>>
      \context Staff = CZStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CZVoiceLH \CZxBFCZMusicLH
      >>
      \context Lyrics = CZLyricsA \lyricsto CZVoiceLyrics \CZVerseA
      \context Lyrics = CZLyricsAAlt \lyricsto CZVoiceLyrics \CZVerseAAlt
      \context Lyrics = CZLyricsB \lyricsto CZVoiceLyrics \CZVerseB
      \context Lyrics = CZLyricsBAlt \lyricsto CZVoiceLyrics \CZVerseBAlt
      \context Lyrics = CZLyricsC \lyricsto CZVoiceLyrics \CZVerseC
      \context Lyrics = CZLyricsCAlt \lyricsto CZVoiceLyrics \CZVerseCAlt
      \context Lyrics = CZLyricsD \lyricsto CZVoiceLyrics \CZVerseD
      \context Lyrics = CZLyricsDAlt \lyricsto CZVoiceLyrics \CZVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CAStaffGroup <<
      \context Staff = CAStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CAVoiceLyrics \ CAxBHICAMusicLyrics
        \context Voice = CAVoiceRH \ CAxBHICAMusicRH
      >>
      \new Lyrics  = CALyricsA
      \new Lyrics = CALyricsAAlt
      \new Lyrics  = CALyricsB
      \new Lyrics  = CALyricsC
      \new Lyrics = CALyricsCAlt
      \new Lyrics  = CALyricsD
      \new Lyrics = CALyricsDAlt
>>
      \context Staff = CAStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CAVoiceLH \CAxBHICAMusicLH
      >>
      \context Lyrics = CALyricsA \lyricsto CAVoiceLyrics \CAVerseA
      \context Lyrics = CALyricsAAlt \lyricsto CAVoiceLyrics \CAVerseAAlt
      \context Lyrics = CALyricsB \lyricsto CAVoiceLyrics \CAChorus
      \context Lyrics = CALyricsC \lyricsto CAVoiceLyrics \CAVerseB
      \context Lyrics = CALyricsCAlt \lyricsto CAVoiceLyrics \CAVerseBAlt
      \context Lyrics = CALyricsD \lyricsto CAVoiceLyrics \CAVerseC
      \context Lyrics = CALyricsDAlt \lyricsto CAVoiceLyrics \CAVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CBStaffGroup <<
      \context Staff = CBStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CBVoiceLyrics \ CBxBZCBMusicLyrics
        \context Voice = CBVoiceRH \ CBxBZCBMusicRH
      >>
      \new Lyrics  = CBLyricsA
      \new Lyrics = CBLyricsAAlt
      \new Lyrics  = CBLyricsB
      \new Lyrics  = CBLyricsC
      \new Lyrics = CBLyricsCAlt
      \new Lyrics  = CBLyricsD
      \new Lyrics = CBLyricsDAlt
      \new Lyrics  = CBLyricsE
      \new Lyrics = CBLyricsEAlt
>>
      \context Staff = CBStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CBVoiceLH \CBxBZCBMusicLH
      >>
      \context Lyrics = CBLyricsA \lyricsto CBVoiceLyrics \CBVerseA
      \context Lyrics = CBLyricsAAlt \lyricsto CBVoiceLyrics \CBVerseAAlt
      \context Lyrics = CBLyricsB \lyricsto CBVoiceLyrics \CBChorus
      \context Lyrics = CBLyricsC \lyricsto CBVoiceLyrics \CBVerseB
      \context Lyrics = CBLyricsCAlt \lyricsto CBVoiceLyrics \CBVerseBAlt
      \context Lyrics = CBLyricsD \lyricsto CBVoiceLyrics \CBVerseC
      \context Lyrics = CBLyricsDAlt \lyricsto CBVoiceLyrics \CBVerseCAlt
      \context Lyrics = CBLyricsE \lyricsto CBVoiceLyrics \CBVerseD
      \context Lyrics = CBLyricsEAlt \lyricsto CBVoiceLyrics \CBVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CCStaffGroup <<
      \context Staff = CCStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CCVoiceLyrics \ CCxCDDCCMusicLyrics
        \context Voice = CCVoiceRH \ CCxCDDCCMusicRH
      >>
      \new Lyrics  = CCLyricsA
      \new Lyrics = CCLyricsAAlt
      \new Lyrics  = CCLyricsB
      \new Lyrics = CCLyricsBAlt
      \new Lyrics  = CCLyricsC
      \new Lyrics = CCLyricsCAlt
      \new Lyrics  = CCLyricsD
      \new Lyrics = CCLyricsDAlt
>>
      \context Staff = CCStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CCVoiceLH \CCxCDDCCMusicLH
      >>
      \context Lyrics = CCLyricsA \lyricsto CCVoiceLyrics \CCVerseA
      \context Lyrics = CCLyricsAAlt \lyricsto CCVoiceLyrics \CCVerseAAlt
      \context Lyrics = CCLyricsB \lyricsto CCVoiceLyrics \CCVerseB
      \context Lyrics = CCLyricsBAlt \lyricsto CCVoiceLyrics \CCVerseBAlt
      \context Lyrics = CCLyricsC \lyricsto CCVoiceLyrics \CCVerseC
      \context Lyrics = CCLyricsCAlt \lyricsto CCVoiceLyrics \CCVerseCAlt
      \context Lyrics = CCLyricsD \lyricsto CCVoiceLyrics \CCVerseD
      \context Lyrics = CCLyricsDAlt \lyricsto CCVoiceLyrics \CCVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CDStaffGroup <<
      \context Staff = CDStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CDVoiceLyrics \ CDxAECCDMusicLyrics
        \context Voice = CDVoiceRH \ CDxAECCDMusicRH
      >>
      \new Lyrics  = CDLyricsA
      \new Lyrics = CDLyricsAAlt
      \new Lyrics  = CDLyricsB
      \new Lyrics  = CDLyricsC
      \new Lyrics = CDLyricsCAlt
      \new Lyrics  = CDLyricsD
      \new Lyrics = CDLyricsDAlt
      \new Lyrics  = CDLyricsE
      \new Lyrics = CDLyricsEAlt
>>
      \context Staff = CDStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CDVoiceLH \CDxAECCDMusicLH
      >>
      \context Lyrics = CDLyricsA \lyricsto CDVoiceLyrics \CDVerseA
      \context Lyrics = CDLyricsAAlt \lyricsto CDVoiceLyrics \CDVerseAAlt
      \context Lyrics = CDLyricsB \lyricsto CDVoiceLyrics \CDChorus
      \context Lyrics = CDLyricsC \lyricsto CDVoiceLyrics \CDVerseB
      \context Lyrics = CDLyricsCAlt \lyricsto CDVoiceLyrics \CDVerseBAlt
      \context Lyrics = CDLyricsD \lyricsto CDVoiceLyrics \CDVerseC
      \context Lyrics = CDLyricsDAlt \lyricsto CDVoiceLyrics \CDVerseCAlt
      \context Lyrics = CDLyricsE \lyricsto CDVoiceLyrics \CDVerseD
      \context Lyrics = CDLyricsEAlt \lyricsto CDVoiceLyrics \CDVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CEStaffGroup <<
      \context Staff = CEStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CEVoiceLyrics \ CExAEHCEMusicLyrics
        \context Voice = CEVoiceRH \ CExAEHCEMusicRH
      >>
      \new Lyrics  = CELyricsA
      \new Lyrics = CELyricsAAlt
      \new Lyrics  = CELyricsB
      \new Lyrics = CELyricsBAlt
      \new Lyrics  = CELyricsC
      \new Lyrics = CELyricsCAlt
      \new Lyrics  = CELyricsD
      \new Lyrics = CELyricsDAlt
>>
      \context Staff = CEStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CEVoiceLH \CExAEHCEMusicLH
      >>
      \context Lyrics = CELyricsA \lyricsto CEVoiceLyrics \CEVerseA
      \context Lyrics = CELyricsAAlt \lyricsto CEVoiceLyrics \CEVerseAAlt
      \context Lyrics = CELyricsB \lyricsto CEVoiceLyrics \CEVerseB
      \context Lyrics = CELyricsBAlt \lyricsto CEVoiceLyrics \CEVerseBAlt
      \context Lyrics = CELyricsC \lyricsto CEVoiceLyrics \CEVerseC
      \context Lyrics = CELyricsCAlt \lyricsto CEVoiceLyrics \CEVerseCAlt
      \context Lyrics = CELyricsD \lyricsto CEVoiceLyrics \CEVerseD
      \context Lyrics = CELyricsDAlt \lyricsto CEVoiceLyrics \CEVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CFStaffGroup <<
      \context Staff = CFStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CFVoiceLyrics \ CFxBICFMusicLyrics
        \context Voice = CFVoiceRH \ CFxBICFMusicRH
      >>
      \new Lyrics  = CFLyricsA
      \new Lyrics = CFLyricsAAlt
      \new Lyrics  = CFLyricsB
      \new Lyrics  = CFLyricsC
      \new Lyrics = CFLyricsCAlt
      \new Lyrics  = CFLyricsD
      \new Lyrics = CFLyricsDAlt
      \new Lyrics  = CFLyricsE
      \new Lyrics = CFLyricsEAlt
>>
      \context Staff = CFStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CFVoiceLH \CFxBICFMusicLH
      >>
      \context Lyrics = CFLyricsA \lyricsto CFVoiceLyrics \CFVerseA
      \context Lyrics = CFLyricsAAlt \lyricsto CFVoiceLyrics \CFVerseAAlt
      \context Lyrics = CFLyricsB \lyricsto CFVoiceLyrics \CFChorus
      \context Lyrics = CFLyricsC \lyricsto CFVoiceLyrics \CFVerseB
      \context Lyrics = CFLyricsCAlt \lyricsto CFVoiceLyrics \CFVerseBAlt
      \context Lyrics = CFLyricsD \lyricsto CFVoiceLyrics \CFVerseC
      \context Lyrics = CFLyricsDAlt \lyricsto CFVoiceLyrics \CFVerseCAlt
      \context Lyrics = CFLyricsE \lyricsto CFVoiceLyrics \CFVerseD
      \context Lyrics = CFLyricsEAlt \lyricsto CFVoiceLyrics \CFVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CGStaffGroup <<
      \context Staff = CGStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CGVoiceLyrics \ CGxBBHCGMusicLyrics
        \context Voice = CGVoiceRH \ CGxBBHCGMusicRH
      >>
      \new Lyrics  = CGLyricsA
      \new Lyrics = CGLyricsAAlt
      \new Lyrics  = CGLyricsB
      \new Lyrics  = CGLyricsC
      \new Lyrics = CGLyricsCAlt
      \new Lyrics  = CGLyricsD
      \new Lyrics = CGLyricsDAlt
      \new Lyrics  = CGLyricsE
      \new Lyrics = CGLyricsEAlt
>>
      \context Staff = CGStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CGVoiceLH \CGxBBHCGMusicLH
      >>
      \context Lyrics = CGLyricsA \lyricsto CGVoiceLyrics \CGVerseA
      \context Lyrics = CGLyricsAAlt \lyricsto CGVoiceLyrics \CGVerseAAlt
      \context Lyrics = CGLyricsB \lyricsto CGVoiceLyrics \CGChorus
      \context Lyrics = CGLyricsC \lyricsto CGVoiceLyrics \CGVerseB
      \context Lyrics = CGLyricsCAlt \lyricsto CGVoiceLyrics \CGVerseBAlt
      \context Lyrics = CGLyricsD \lyricsto CGVoiceLyrics \CGVerseC
      \context Lyrics = CGLyricsDAlt \lyricsto CGVoiceLyrics \CGVerseCAlt
      \context Lyrics = CGLyricsE \lyricsto CGVoiceLyrics \CGVerseD
      \context Lyrics = CGLyricsEAlt \lyricsto CGVoiceLyrics \CGVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CHStaffGroup <<
      \context Staff = CHStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CHVoiceLyrics \ CHxAIHCHMusicLyrics
        \context Voice = CHVoiceRH \ CHxAIHCHMusicRH
      >>
      \new Lyrics  = CHLyricsA
      \new Lyrics = CHLyricsAAlt
      \new Lyrics  = CHLyricsB
      \new Lyrics = CHLyricsBAlt
      \new Lyrics  = CHLyricsC
      \new Lyrics = CHLyricsCAlt
      \new Lyrics  = CHLyricsD
      \new Lyrics = CHLyricsDAlt
>>
      \context Staff = CHStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CHVoiceLH \CHxAIHCHMusicLH
      >>
      \context Lyrics = CHLyricsA \lyricsto CHVoiceLyrics \CHVerseA
      \context Lyrics = CHLyricsAAlt \lyricsto CHVoiceLyrics \CHVerseAAlt
      \context Lyrics = CHLyricsB \lyricsto CHVoiceLyrics \CHVerseB
      \context Lyrics = CHLyricsBAlt \lyricsto CHVoiceLyrics \CHVerseBAlt
      \context Lyrics = CHLyricsC \lyricsto CHVoiceLyrics \CHVerseC
      \context Lyrics = CHLyricsCAlt \lyricsto CHVoiceLyrics \CHVerseCAlt
      \context Lyrics = CHLyricsD \lyricsto CHVoiceLyrics \CHVerseD
      \context Lyrics = CHLyricsDAlt \lyricsto CHVoiceLyrics \CHVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = CIStaffGroup <<
      \context Staff = CIStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = CIVoiceLyrics \ CIxICIMusicLyrics
        \context Voice = CIVoiceRH \ CIxICIMusicRH
      >>
      \new Lyrics  = CILyricsA
      \new Lyrics = CILyricsAAlt
      \new Lyrics  = CILyricsB
      \new Lyrics  = CILyricsC
      \new Lyrics = CILyricsCAlt
      \new Lyrics  = CILyricsD
      \new Lyrics = CILyricsDAlt
      \new Lyrics  = CILyricsE
      \new Lyrics = CILyricsEAlt
>>
      \context Staff = CIStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = CIVoiceLH \CIxICIMusicLH
      >>
      \context Lyrics = CILyricsA \lyricsto CIVoiceLyrics \CIVerseA
      \context Lyrics = CILyricsAAlt \lyricsto CIVoiceLyrics \CIVerseAAlt
      \context Lyrics = CILyricsB \lyricsto CIVoiceLyrics \CIChorus
      \context Lyrics = CILyricsC \lyricsto CIVoiceLyrics \CIVerseB
      \context Lyrics = CILyricsCAlt \lyricsto CIVoiceLyrics \CIVerseBAlt
      \context Lyrics = CILyricsD \lyricsto CIVoiceLyrics \CIVerseC
      \context Lyrics = CILyricsDAlt \lyricsto CIVoiceLyrics \CIVerseCAlt
      \context Lyrics = CILyricsE \lyricsto CIVoiceLyrics \CIVerseD
      \context Lyrics = CILyricsEAlt \lyricsto CIVoiceLyrics \CIVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DZStaffGroup <<
      \context Staff = DZStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DZVoiceLyrics \ DZxDZMusicLyrics
        \context Voice = DZVoiceRH \ DZxDZMusicRH
      >>
      \new Lyrics  = DZLyricsA
      \new Lyrics = DZLyricsAAlt
      \new Lyrics  = DZLyricsB
      \new Lyrics  = DZLyricsC
      \new Lyrics = DZLyricsCAlt
      \new Lyrics  = DZLyricsD
      \new Lyrics = DZLyricsDAlt
      \new Lyrics  = DZLyricsE
      \new Lyrics = DZLyricsEAlt
>>
      \context Staff = DZStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DZVoiceLH \DZxDZMusicLH
      >>
      \context Lyrics = DZLyricsA \lyricsto DZVoiceLyrics \DZVerseA
      \context Lyrics = DZLyricsAAlt \lyricsto DZVoiceLyrics \DZVerseAAlt
      \context Lyrics = DZLyricsB \lyricsto DZVoiceLyrics \DZChorus
      \context Lyrics = DZLyricsC \lyricsto DZVoiceLyrics \DZVerseB
      \context Lyrics = DZLyricsCAlt \lyricsto DZVoiceLyrics \DZVerseBAlt
      \context Lyrics = DZLyricsD \lyricsto DZVoiceLyrics \DZVerseC
      \context Lyrics = DZLyricsDAlt \lyricsto DZVoiceLyrics \DZVerseCAlt
      \context Lyrics = DZLyricsE \lyricsto DZVoiceLyrics \DZVerseD
      \context Lyrics = DZLyricsEAlt \lyricsto DZVoiceLyrics \DZVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DAStaffGroup <<
      \context Staff = DAStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DAVoiceLyrics \ DAxDDAMusicLyrics
        \context Voice = DAVoiceRH \ DAxDDAMusicRH
      >>
      \new Lyrics  = DALyricsA
      \new Lyrics = DALyricsAAlt
      \new Lyrics  = DALyricsB
      \new Lyrics = DALyricsBAlt
      \new Lyrics  = DALyricsC
      \new Lyrics = DALyricsCAlt
      \new Lyrics  = DALyricsD
      \new Lyrics = DALyricsDAlt
>>
      \context Staff = DAStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DAVoiceLH \DAxDDAMusicLH
      >>
      \context Lyrics = DALyricsA \lyricsto DAVoiceLyrics \DAVerseA
      \context Lyrics = DALyricsAAlt \lyricsto DAVoiceLyrics \DAVerseAAlt
      \context Lyrics = DALyricsB \lyricsto DAVoiceLyrics \DAVerseB
      \context Lyrics = DALyricsBAlt \lyricsto DAVoiceLyrics \DAVerseBAlt
      \context Lyrics = DALyricsC \lyricsto DAVoiceLyrics \DAVerseC
      \context Lyrics = DALyricsCAlt \lyricsto DAVoiceLyrics \DAVerseCAlt
      \context Lyrics = DALyricsD \lyricsto DAVoiceLyrics \DAVerseD
      \context Lyrics = DALyricsDAlt \lyricsto DAVoiceLyrics \DAVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DBStaffGroup <<
      \context Staff = DBStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DBVoiceLyrics \ DBxDZADBMusicLyrics
        \context Voice = DBVoiceRH \ DBxDZADBMusicRH
      >>
      \new Lyrics  = DBLyricsA
      \new Lyrics = DBLyricsAAlt
      \new Lyrics  = DBLyricsB
      \new Lyrics  = DBLyricsC
      \new Lyrics = DBLyricsCAlt
      \new Lyrics  = DBLyricsD
      \new Lyrics = DBLyricsDAlt
      \new Lyrics  = DBLyricsE
      \new Lyrics = DBLyricsEAlt
>>
      \context Staff = DBStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DBVoiceLH \DBxDZADBMusicLH
      >>
      \context Lyrics = DBLyricsA \lyricsto DBVoiceLyrics \DBVerseA
      \context Lyrics = DBLyricsAAlt \lyricsto DBVoiceLyrics \DBVerseAAlt
      \context Lyrics = DBLyricsB \lyricsto DBVoiceLyrics \DBChorus
      \context Lyrics = DBLyricsC \lyricsto DBVoiceLyrics \DBVerseB
      \context Lyrics = DBLyricsCAlt \lyricsto DBVoiceLyrics \DBVerseBAlt
      \context Lyrics = DBLyricsD \lyricsto DBVoiceLyrics \DBVerseC
      \context Lyrics = DBLyricsDAlt \lyricsto DBVoiceLyrics \DBVerseCAlt
      \context Lyrics = DBLyricsE \lyricsto DBVoiceLyrics \DBVerseD
      \context Lyrics = DBLyricsEAlt \lyricsto DBVoiceLyrics \DBVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DCStaffGroup <<
      \context Staff = DCStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DCVoiceLyrics \ DCxAGDCMusicLyrics
        \context Voice = DCVoiceRH \ DCxAGDCMusicRH
      >>
      \new Lyrics  = DCLyricsA
      \new Lyrics = DCLyricsAAlt
      \new Lyrics  = DCLyricsB
      \new Lyrics = DCLyricsBAlt
      \new Lyrics  = DCLyricsC
      \new Lyrics = DCLyricsCAlt
      \new Lyrics  = DCLyricsD
      \new Lyrics = DCLyricsDAlt
>>
      \context Staff = DCStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DCVoiceLH \DCxAGDCMusicLH
      >>
      \context Lyrics = DCLyricsA \lyricsto DCVoiceLyrics \DCVerseA
      \context Lyrics = DCLyricsAAlt \lyricsto DCVoiceLyrics \DCVerseAAlt
      \context Lyrics = DCLyricsB \lyricsto DCVoiceLyrics \DCVerseB
      \context Lyrics = DCLyricsBAlt \lyricsto DCVoiceLyrics \DCVerseBAlt
      \context Lyrics = DCLyricsC \lyricsto DCVoiceLyrics \DCVerseC
      \context Lyrics = DCLyricsCAlt \lyricsto DCVoiceLyrics \DCVerseCAlt
      \context Lyrics = DCLyricsD \lyricsto DCVoiceLyrics \DCVerseD
      \context Lyrics = DCLyricsDAlt \lyricsto DCVoiceLyrics \DCVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DDStaffGroup <<
      \context Staff = DDStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DDVoiceLyrics \ DDxCAZDDMusicLyrics
        \context Voice = DDVoiceRH \ DDxCAZDDMusicRH
      >>
      \new Lyrics  = DDLyricsA
      \new Lyrics = DDLyricsAAlt
      \new Lyrics  = DDLyricsB
      \new Lyrics  = DDLyricsC
      \new Lyrics = DDLyricsCAlt
      \new Lyrics  = DDLyricsD
      \new Lyrics = DDLyricsDAlt
>>
      \context Staff = DDStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DDVoiceLH \DDxCAZDDMusicLH
      >>
      \context Lyrics = DDLyricsA \lyricsto DDVoiceLyrics \DDVerseA
      \context Lyrics = DDLyricsAAlt \lyricsto DDVoiceLyrics \DDVerseAAlt
      \context Lyrics = DDLyricsB \lyricsto DDVoiceLyrics \DDChorus
      \context Lyrics = DDLyricsC \lyricsto DDVoiceLyrics \DDVerseB
      \context Lyrics = DDLyricsCAlt \lyricsto DDVoiceLyrics \DDVerseBAlt
      \context Lyrics = DDLyricsD \lyricsto DDVoiceLyrics \DDVerseC
      \context Lyrics = DDLyricsDAlt \lyricsto DDVoiceLyrics \DDVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DEStaffGroup <<
      \context Staff = DEStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DEVoiceLyrics \ DExAHEDEMusicLyrics
        \context Voice = DEVoiceRH \ DExAHEDEMusicRH
      >>
      \new Lyrics  = DELyricsA
      \new Lyrics = DELyricsAAlt
      \new Lyrics  = DELyricsB
      \new Lyrics  = DELyricsC
      \new Lyrics = DELyricsCAlt
      \new Lyrics  = DELyricsD
      \new Lyrics = DELyricsDAlt
      \new Lyrics  = DELyricsE
      \new Lyrics = DELyricsEAlt
>>
      \context Staff = DEStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DEVoiceLH \DExAHEDEMusicLH
      >>
      \context Lyrics = DELyricsA \lyricsto DEVoiceLyrics \DEVerseA
      \context Lyrics = DELyricsAAlt \lyricsto DEVoiceLyrics \DEVerseAAlt
      \context Lyrics = DELyricsB \lyricsto DEVoiceLyrics \DEChorus
      \context Lyrics = DELyricsC \lyricsto DEVoiceLyrics \DEVerseB
      \context Lyrics = DELyricsCAlt \lyricsto DEVoiceLyrics \DEVerseBAlt
      \context Lyrics = DELyricsD \lyricsto DEVoiceLyrics \DEVerseC
      \context Lyrics = DELyricsDAlt \lyricsto DEVoiceLyrics \DEVerseCAlt
      \context Lyrics = DELyricsE \lyricsto DEVoiceLyrics \DEVerseD
      \context Lyrics = DELyricsEAlt \lyricsto DEVoiceLyrics \DEVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DFStaffGroup <<
      \context Staff = DFStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DFVoiceLyrics \ DFxABGDFMusicLyrics
        \context Voice = DFVoiceRH \ DFxABGDFMusicRH
      >>
      \new Lyrics  = DFLyricsA
      \new Lyrics = DFLyricsAAlt
      \new Lyrics  = DFLyricsB
      \new Lyrics  = DFLyricsC
      \new Lyrics = DFLyricsCAlt
      \new Lyrics  = DFLyricsD
      \new Lyrics = DFLyricsDAlt
      \new Lyrics  = DFLyricsE
      \new Lyrics = DFLyricsEAlt
>>
      \context Staff = DFStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DFVoiceLH \DFxABGDFMusicLH
      >>
      \context Lyrics = DFLyricsA \lyricsto DFVoiceLyrics \DFVerseA
      \context Lyrics = DFLyricsAAlt \lyricsto DFVoiceLyrics \DFVerseAAlt
      \context Lyrics = DFLyricsB \lyricsto DFVoiceLyrics \DFChorus
      \context Lyrics = DFLyricsC \lyricsto DFVoiceLyrics \DFVerseB
      \context Lyrics = DFLyricsCAlt \lyricsto DFVoiceLyrics \DFVerseBAlt
      \context Lyrics = DFLyricsD \lyricsto DFVoiceLyrics \DFVerseC
      \context Lyrics = DFLyricsDAlt \lyricsto DFVoiceLyrics \DFVerseCAlt
      \context Lyrics = DFLyricsE \lyricsto DFVoiceLyrics \DFVerseD
      \context Lyrics = DFLyricsEAlt \lyricsto DFVoiceLyrics \DFVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DGStaffGroup <<
      \context Staff = DGStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DGVoiceLyrics \ DGxAHFDGMusicLyrics
        \context Voice = DGVoiceRH \ DGxAHFDGMusicRH
      >>
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
>>
      \context Staff = DGStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DGVoiceLH \DGxAHFDGMusicLH
      >>
      \context Lyrics = DGLyricsA \lyricsto DGVoiceLyrics \DGVerseA
      \context Lyrics = DGLyricsAAlt \lyricsto DGVoiceLyrics \DGVerseAAlt
      \context Lyrics = DGLyricsB \lyricsto DGVoiceLyrics \DGVerseB
      \context Lyrics = DGLyricsBAlt \lyricsto DGVoiceLyrics \DGVerseBAlt
      \context Lyrics = DGLyricsC \lyricsto DGVoiceLyrics \DGVerseC
      \context Lyrics = DGLyricsCAlt \lyricsto DGVoiceLyrics \DGVerseCAlt
      \context Lyrics = DGLyricsD \lyricsto DGVoiceLyrics \DGVerseD
      \context Lyrics = DGLyricsDAlt \lyricsto DGVoiceLyrics \DGVerseDAlt
      \context Lyrics = DGLyricsE \lyricsto DGVoiceLyrics \DGVerseE
      \context Lyrics = DGLyricsEAlt \lyricsto DGVoiceLyrics \DGVerseEAlt
      \context Lyrics = DGLyricsF \lyricsto DGVoiceLyrics \DGVerseF
      \context Lyrics = DGLyricsFAlt \lyricsto DGVoiceLyrics \DGVerseFAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DHStaffGroup <<
      \context Staff = DHStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DHVoiceLyrics \ DHxHIDHMusicLyrics
        \context Voice = DHVoiceRH \ DHxHIDHMusicRH
      >>
      \new Lyrics  = DHLyricsA
      \new Lyrics = DHLyricsAAlt
      \new Lyrics  = DHLyricsB
      \new Lyrics  = DHLyricsC
      \new Lyrics = DHLyricsCAlt
      \new Lyrics  = DHLyricsD
      \new Lyrics = DHLyricsDAlt
>>
      \context Staff = DHStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DHVoiceLH \DHxHIDHMusicLH
      >>
      \context Lyrics = DHLyricsA \lyricsto DHVoiceLyrics \DHVerseA
      \context Lyrics = DHLyricsAAlt \lyricsto DHVoiceLyrics \DHVerseAAlt
      \context Lyrics = DHLyricsB \lyricsto DHVoiceLyrics \DHChorus
      \context Lyrics = DHLyricsC \lyricsto DHVoiceLyrics \DHVerseB
      \context Lyrics = DHLyricsCAlt \lyricsto DHVoiceLyrics \DHVerseBAlt
      \context Lyrics = DHLyricsD \lyricsto DHVoiceLyrics \DHVerseC
      \context Lyrics = DHLyricsDAlt \lyricsto DHVoiceLyrics \DHVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = DIStaffGroup <<
      \context Staff = DIStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = DIVoiceLyrics \ DIxAAFDIMusicLyrics
        \context Voice = DIVoiceRH \ DIxAAFDIMusicRH
      >>
      \new Lyrics  = DILyricsA
      \new Lyrics = DILyricsAAlt
      \new Lyrics  = DILyricsB
      \new Lyrics  = DILyricsC
      \new Lyrics = DILyricsCAlt
      \new Lyrics  = DILyricsD
      \new Lyrics = DILyricsDAlt
>>
      \context Staff = DIStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = DIVoiceLH \DIxAAFDIMusicLH
      >>
      \context Lyrics = DILyricsA \lyricsto DIVoiceLyrics \DIVerseA
      \context Lyrics = DILyricsAAlt \lyricsto DIVoiceLyrics \DIVerseAAlt
      \context Lyrics = DILyricsB \lyricsto DIVoiceLyrics \DIChorus
      \context Lyrics = DILyricsC \lyricsto DIVoiceLyrics \DIVerseB
      \context Lyrics = DILyricsCAlt \lyricsto DIVoiceLyrics \DIVerseBAlt
      \context Lyrics = DILyricsD \lyricsto DIVoiceLyrics \DIVerseC
      \context Lyrics = DILyricsDAlt \lyricsto DIVoiceLyrics \DIVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EZStaffGroup <<
      \context Staff = EZStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EZVoiceLyrics \ EZxBAEEZMusicLyrics
        \context Voice = EZVoiceRH \ EZxBAEEZMusicRH
      >>
      \new Lyrics  = EZLyricsA
      \new Lyrics = EZLyricsAAlt
      \new Lyrics  = EZLyricsB
      \new Lyrics = EZLyricsBAlt
      \new Lyrics  = EZLyricsC
      \new Lyrics = EZLyricsCAlt
>>
      \context Staff = EZStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EZVoiceLH \EZxBAEEZMusicLH
      >>
      \context Lyrics = EZLyricsA \lyricsto EZVoiceLyrics \EZVerseA
      \context Lyrics = EZLyricsAAlt \lyricsto EZVoiceLyrics \EZVerseAAlt
      \context Lyrics = EZLyricsB \lyricsto EZVoiceLyrics \EZVerseB
      \context Lyrics = EZLyricsBAlt \lyricsto EZVoiceLyrics \EZVerseBAlt
      \context Lyrics = EZLyricsC \lyricsto EZVoiceLyrics \EZVerseC
      \context Lyrics = EZLyricsCAlt \lyricsto EZVoiceLyrics \EZVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EAStaffGroup <<
      \context Staff = EAStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EAVoiceLyrics \ EAxCFEAMusicLyrics
        \context Voice = EAVoiceRH \ EAxCFEAMusicRH
      >>
      \new Lyrics  = EALyricsA
      \new Lyrics = EALyricsAAlt
      \new Lyrics  = EALyricsB
      \new Lyrics = EALyricsBAlt
      \new Lyrics  = EALyricsC
      \new Lyrics = EALyricsCAlt
      \new Lyrics  = EALyricsD
      \new Lyrics = EALyricsDAlt
>>
      \context Staff = EAStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EAVoiceLH \EAxCFEAMusicLH
      >>
      \context Lyrics = EALyricsA \lyricsto EAVoiceLyrics \EAVerseA
      \context Lyrics = EALyricsAAlt \lyricsto EAVoiceLyrics \EAVerseAAlt
      \context Lyrics = EALyricsB \lyricsto EAVoiceLyrics \EAVerseB
      \context Lyrics = EALyricsBAlt \lyricsto EAVoiceLyrics \EAVerseBAlt
      \context Lyrics = EALyricsC \lyricsto EAVoiceLyrics \EAVerseC
      \context Lyrics = EALyricsCAlt \lyricsto EAVoiceLyrics \EAVerseCAlt
      \context Lyrics = EALyricsD \lyricsto EAVoiceLyrics \EAVerseD
      \context Lyrics = EALyricsDAlt \lyricsto EAVoiceLyrics \EAVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EBStaffGroup <<
      \context Staff = EBStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EBVoiceLyrics \ EBxDBEBMusicLyrics
        \context Voice = EBVoiceRH \ EBxDBEBMusicRH
      >>
      \new Lyrics  = EBLyricsA
      \new Lyrics = EBLyricsAAlt
      \new Lyrics  = EBLyricsB
      \new Lyrics  = EBLyricsC
      \new Lyrics = EBLyricsCAlt
      \new Lyrics  = EBLyricsD
      \new Lyrics = EBLyricsDAlt
      \new Lyrics  = EBLyricsE
      \new Lyrics = EBLyricsEAlt
>>
      \context Staff = EBStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EBVoiceLH \EBxDBEBMusicLH
      >>
      \context Lyrics = EBLyricsA \lyricsto EBVoiceLyrics \EBVerseA
      \context Lyrics = EBLyricsAAlt \lyricsto EBVoiceLyrics \EBVerseAAlt
      \context Lyrics = EBLyricsB \lyricsto EBVoiceLyrics \EBChorus
      \context Lyrics = EBLyricsC \lyricsto EBVoiceLyrics \EBVerseB
      \context Lyrics = EBLyricsCAlt \lyricsto EBVoiceLyrics \EBVerseBAlt
      \context Lyrics = EBLyricsD \lyricsto EBVoiceLyrics \EBVerseC
      \context Lyrics = EBLyricsDAlt \lyricsto EBVoiceLyrics \EBVerseCAlt
      \context Lyrics = EBLyricsE \lyricsto EBVoiceLyrics \EBVerseD
      \context Lyrics = EBLyricsEAlt \lyricsto EBVoiceLyrics \EBVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = ECStaffGroup <<
      \context Staff = ECStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = ECVoiceLyrics \ ECxAIECMusicLyrics
        \context Voice = ECVoiceRH \ ECxAIECMusicRH
      >>
      \new Lyrics  = ECLyricsA
      \new Lyrics = ECLyricsAAlt
      \new Lyrics  = ECLyricsB
      \new Lyrics  = ECLyricsC
      \new Lyrics = ECLyricsCAlt
      \new Lyrics  = ECLyricsD
      \new Lyrics = ECLyricsDAlt
      \new Lyrics  = ECLyricsE
      \new Lyrics = ECLyricsEAlt
>>
      \context Staff = ECStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = ECVoiceLH \ECxAIECMusicLH
      >>
      \context Lyrics = ECLyricsA \lyricsto ECVoiceLyrics \ECVerseA
      \context Lyrics = ECLyricsAAlt \lyricsto ECVoiceLyrics \ECVerseAAlt
      \context Lyrics = ECLyricsB \lyricsto ECVoiceLyrics \ECChorus
      \context Lyrics = ECLyricsC \lyricsto ECVoiceLyrics \ECVerseB
      \context Lyrics = ECLyricsCAlt \lyricsto ECVoiceLyrics \ECVerseBAlt
      \context Lyrics = ECLyricsD \lyricsto ECVoiceLyrics \ECVerseC
      \context Lyrics = ECLyricsDAlt \lyricsto ECVoiceLyrics \ECVerseCAlt
      \context Lyrics = ECLyricsE \lyricsto ECVoiceLyrics \ECVerseD
      \context Lyrics = ECLyricsEAlt \lyricsto ECVoiceLyrics \ECVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EDStaffGroup <<
      \context Staff = EDStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EDVoiceLyrics \ EDxAZEEDMusicLyrics
        \context Voice = EDVoiceRH \ EDxAZEEDMusicRH
      >>
      \new Lyrics  = EDLyricsA
      \new Lyrics = EDLyricsAAlt
      \new Lyrics  = EDLyricsB
      \new Lyrics  = EDLyricsC
      \new Lyrics = EDLyricsCAlt
      \new Lyrics  = EDLyricsD
      \new Lyrics = EDLyricsDAlt
      \new Lyrics  = EDLyricsE
      \new Lyrics = EDLyricsEAlt
>>
      \context Staff = EDStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EDVoiceLH \EDxAZEEDMusicLH
      >>
      \context Lyrics = EDLyricsA \lyricsto EDVoiceLyrics \EDVerseA
      \context Lyrics = EDLyricsAAlt \lyricsto EDVoiceLyrics \EDVerseAAlt
      \context Lyrics = EDLyricsB \lyricsto EDVoiceLyrics \EDChorus
      \context Lyrics = EDLyricsC \lyricsto EDVoiceLyrics \EDVerseB
      \context Lyrics = EDLyricsCAlt \lyricsto EDVoiceLyrics \EDVerseBAlt
      \context Lyrics = EDLyricsD \lyricsto EDVoiceLyrics \EDVerseC
      \context Lyrics = EDLyricsDAlt \lyricsto EDVoiceLyrics \EDVerseCAlt
      \context Lyrics = EDLyricsE \lyricsto EDVoiceLyrics \EDVerseD
      \context Lyrics = EDLyricsEAlt \lyricsto EDVoiceLyrics \EDVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EEStaffGroup <<
      \context Staff = EEStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EEVoiceLyrics \ EExACEEMusicLyrics
        \context Voice = EEVoiceRH \ EExACEEMusicRH
      >>
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
>>
      \context Staff = EEStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EEVoiceLH \EExACEEMusicLH
      >>
      \context Lyrics = EELyricsA \lyricsto EEVoiceLyrics \EEVerseA
      \context Lyrics = EELyricsAAlt \lyricsto EEVoiceLyrics \EEVerseAAlt
      \context Lyrics = EELyricsB \lyricsto EEVoiceLyrics \EEVerseB
      \context Lyrics = EELyricsBAlt \lyricsto EEVoiceLyrics \EEVerseBAlt
      \context Lyrics = EELyricsC \lyricsto EEVoiceLyrics \EEVerseC
      \context Lyrics = EELyricsCAlt \lyricsto EEVoiceLyrics \EEVerseCAlt
      \context Lyrics = EELyricsD \lyricsto EEVoiceLyrics \EEVerseD
      \context Lyrics = EELyricsDAlt \lyricsto EEVoiceLyrics \EEVerseDAlt
      \context Lyrics = EELyricsE \lyricsto EEVoiceLyrics \EEVerseE
      \context Lyrics = EELyricsEAlt \lyricsto EEVoiceLyrics \EEVerseEAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EFStaffGroup <<
      \context Staff = EFStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EFVoiceLyrics \ EFxBDDEFMusicLyrics
        \context Voice = EFVoiceRH \ EFxBDDEFMusicRH
      >>
      \new Lyrics  = EFLyricsA
      \new Lyrics = EFLyricsAAlt
      \new Lyrics  = EFLyricsB
      \new Lyrics = EFLyricsBAlt
      \new Lyrics  = EFLyricsC
      \new Lyrics = EFLyricsCAlt
>>
      \context Staff = EFStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EFVoiceLH \EFxBDDEFMusicLH
      >>
      \context Lyrics = EFLyricsA \lyricsto EFVoiceLyrics \EFVerseA
      \context Lyrics = EFLyricsAAlt \lyricsto EFVoiceLyrics \EFVerseAAlt
      \context Lyrics = EFLyricsB \lyricsto EFVoiceLyrics \EFVerseB
      \context Lyrics = EFLyricsBAlt \lyricsto EFVoiceLyrics \EFVerseBAlt
      \context Lyrics = EFLyricsC \lyricsto EFVoiceLyrics \EFVerseC
      \context Lyrics = EFLyricsCAlt \lyricsto EFVoiceLyrics \EFVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EGStaffGroup <<
      \context Staff = EGStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EGVoiceLyrics \ EGxFIEGMusicLyrics
        \context Voice = EGVoiceRH \ EGxFIEGMusicRH
      >>
      \new Lyrics  = EGLyricsA
      \new Lyrics = EGLyricsAAlt
      \new Lyrics  = EGLyricsB
      \new Lyrics = EGLyricsBAlt
      \new Lyrics  = EGLyricsC
      \new Lyrics = EGLyricsCAlt
      \new Lyrics  = EGLyricsD
      \new Lyrics = EGLyricsDAlt
>>
      \context Staff = EGStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EGVoiceLH \EGxFIEGMusicLH
      >>
      \context Lyrics = EGLyricsA \lyricsto EGVoiceLyrics \EGVerseA
      \context Lyrics = EGLyricsAAlt \lyricsto EGVoiceLyrics \EGVerseAAlt
      \context Lyrics = EGLyricsB \lyricsto EGVoiceLyrics \EGVerseB
      \context Lyrics = EGLyricsBAlt \lyricsto EGVoiceLyrics \EGVerseBAlt
      \context Lyrics = EGLyricsC \lyricsto EGVoiceLyrics \EGVerseC
      \context Lyrics = EGLyricsCAlt \lyricsto EGVoiceLyrics \EGVerseCAlt
      \context Lyrics = EGLyricsD \lyricsto EGVoiceLyrics \EGVerseD
      \context Lyrics = EGLyricsDAlt \lyricsto EGVoiceLyrics \EGVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EHStaffGroup <<
      \context Staff = EHStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EHVoiceLyrics \ EHxBHDEHMusicLyrics
        \context Voice = EHVoiceRH \ EHxBHDEHMusicRH
      >>
      \new Lyrics  = EHLyricsA
      \new Lyrics = EHLyricsAAlt
      \new Lyrics  = EHLyricsB
      \new Lyrics  = EHLyricsC
      \new Lyrics = EHLyricsCAlt
      \new Lyrics  = EHLyricsD
      \new Lyrics = EHLyricsDAlt
      \new Lyrics  = EHLyricsE
      \new Lyrics = EHLyricsEAlt
>>
      \context Staff = EHStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EHVoiceLH \EHxBHDEHMusicLH
      >>
      \context Lyrics = EHLyricsA \lyricsto EHVoiceLyrics \EHVerseA
      \context Lyrics = EHLyricsAAlt \lyricsto EHVoiceLyrics \EHVerseAAlt
      \context Lyrics = EHLyricsB \lyricsto EHVoiceLyrics \EHChorus
      \context Lyrics = EHLyricsC \lyricsto EHVoiceLyrics \EHVerseB
      \context Lyrics = EHLyricsCAlt \lyricsto EHVoiceLyrics \EHVerseBAlt
      \context Lyrics = EHLyricsD \lyricsto EHVoiceLyrics \EHVerseC
      \context Lyrics = EHLyricsDAlt \lyricsto EHVoiceLyrics \EHVerseCAlt
      \context Lyrics = EHLyricsE \lyricsto EHVoiceLyrics \EHVerseD
      \context Lyrics = EHLyricsEAlt \lyricsto EHVoiceLyrics \EHVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = EIStaffGroup <<
      \context Staff = EIStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = EIVoiceLyrics \ EIxBIAEIMusicLyrics
        \context Voice = EIVoiceRH \ EIxBIAEIMusicRH
      >>
      \new Lyrics  = EILyricsA
      \new Lyrics = EILyricsAAlt
      \new Lyrics  = EILyricsB
      \new Lyrics = EILyricsBAlt
      \new Lyrics  = EILyricsC
      \new Lyrics = EILyricsCAlt
>>
      \context Staff = EIStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = EIVoiceLH \EIxBIAEIMusicLH
      >>
      \context Lyrics = EILyricsA \lyricsto EIVoiceLyrics \EIVerseA
      \context Lyrics = EILyricsAAlt \lyricsto EIVoiceLyrics \EIVerseAAlt
      \context Lyrics = EILyricsB \lyricsto EIVoiceLyrics \EIVerseB
      \context Lyrics = EILyricsBAlt \lyricsto EIVoiceLyrics \EIVerseBAlt
      \context Lyrics = EILyricsC \lyricsto EIVoiceLyrics \EIVerseC
      \context Lyrics = EILyricsCAlt \lyricsto EIVoiceLyrics \EIVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = FZStaffGroup <<
      \context Staff = FZStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = FZVoiceLyrics \ FZxBZZFZMusicLyrics
        \context Voice = FZVoiceRH \ FZxBZZFZMusicRH
      >>
      \new Lyrics  = FZLyricsA
      \new Lyrics = FZLyricsAAlt
      \new Lyrics  = FZLyricsB
      \new Lyrics  = FZLyricsC
      \new Lyrics = FZLyricsCAlt
      \new Lyrics  = FZLyricsD
      \new Lyrics = FZLyricsDAlt
>>
      \context Staff = FZStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = FZVoiceLH \FZxBZZFZMusicLH
      >>
      \context Lyrics = FZLyricsA \lyricsto FZVoiceLyrics \FZVerseA
      \context Lyrics = FZLyricsAAlt \lyricsto FZVoiceLyrics \FZVerseAAlt
      \context Lyrics = FZLyricsB \lyricsto FZVoiceLyrics \FZChorus
      \context Lyrics = FZLyricsC \lyricsto FZVoiceLyrics \FZVerseB
      \context Lyrics = FZLyricsCAlt \lyricsto FZVoiceLyrics \FZVerseBAlt
      \context Lyrics = FZLyricsD \lyricsto FZVoiceLyrics \FZVerseC
      \context Lyrics = FZLyricsDAlt \lyricsto FZVoiceLyrics \FZVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = FAStaffGroup <<
      \context Staff = FAStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = FAVoiceLyrics \ FAxAZFAMusicLyrics
        \context Voice = FAVoiceRH \ FAxAZFAMusicRH
      >>
      \new Lyrics  = FALyricsA
      \new Lyrics = FALyricsAAlt
      \new Lyrics  = FALyricsB
      \new Lyrics  = FALyricsC
      \new Lyrics = FALyricsCAlt
      \new Lyrics  = FALyricsD
      \new Lyrics = FALyricsDAlt
      \new Lyrics  = FALyricsE
      \new Lyrics = FALyricsEAlt
>>
      \context Staff = FAStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = FAVoiceLH \FAxAZFAMusicLH
      >>
      \context Lyrics = FALyricsA \lyricsto FAVoiceLyrics \FAVerseA
      \context Lyrics = FALyricsAAlt \lyricsto FAVoiceLyrics \FAVerseAAlt
      \context Lyrics = FALyricsB \lyricsto FAVoiceLyrics \FAChorus
      \context Lyrics = FALyricsC \lyricsto FAVoiceLyrics \FAVerseB
      \context Lyrics = FALyricsCAlt \lyricsto FAVoiceLyrics \FAVerseBAlt
      \context Lyrics = FALyricsD \lyricsto FAVoiceLyrics \FAVerseC
      \context Lyrics = FALyricsDAlt \lyricsto FAVoiceLyrics \FAVerseCAlt
      \context Lyrics = FALyricsE \lyricsto FAVoiceLyrics \FAVerseD
      \context Lyrics = FALyricsEAlt \lyricsto FAVoiceLyrics \FAVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = FBStaffGroup <<
      \context Staff = FBStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = FBVoiceLyrics \ FBxGBFBMusicLyrics
        \context Voice = FBVoiceRH \ FBxGBFBMusicRH
      >>
      \new Lyrics  = FBLyricsA
      \new Lyrics = FBLyricsAAlt
      \new Lyrics  = FBLyricsB
      \new Lyrics  = FBLyricsC
      \new Lyrics = FBLyricsCAlt
      \new Lyrics  = FBLyricsD
      \new Lyrics = FBLyricsDAlt
      \new Lyrics  = FBLyricsE
      \new Lyrics = FBLyricsEAlt
>>
      \context Staff = FBStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = FBVoiceLH \FBxGBFBMusicLH
      >>
      \context Lyrics = FBLyricsA \lyricsto FBVoiceLyrics \FBVerseA
      \context Lyrics = FBLyricsAAlt \lyricsto FBVoiceLyrics \FBVerseAAlt
      \context Lyrics = FBLyricsB \lyricsto FBVoiceLyrics \FBChorus
      \context Lyrics = FBLyricsC \lyricsto FBVoiceLyrics \FBVerseB
      \context Lyrics = FBLyricsCAlt \lyricsto FBVoiceLyrics \FBVerseBAlt
      \context Lyrics = FBLyricsD \lyricsto FBVoiceLyrics \FBVerseC
      \context Lyrics = FBLyricsDAlt \lyricsto FBVoiceLyrics \FBVerseCAlt
      \context Lyrics = FBLyricsE \lyricsto FBVoiceLyrics \FBVerseD
      \context Lyrics = FBLyricsEAlt \lyricsto FBVoiceLyrics \FBVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = FCStaffGroup <<
      \context Staff = FCStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = FCVoiceLyrics \ FCxBBCFCMusicLyrics
        \context Voice = FCVoiceRH \ FCxBBCFCMusicRH
      >>
      \new Lyrics  = FCLyricsA
      \new Lyrics = FCLyricsAAlt
      \new Lyrics  = FCLyricsB
      \new Lyrics = FCLyricsBAlt
      \new Lyrics  = FCLyricsC
      \new Lyrics = FCLyricsCAlt
      \new Lyrics  = FCLyricsD
      \new Lyrics = FCLyricsDAlt
>>
      \context Staff = FCStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = FCVoiceLH \FCxBBCFCMusicLH
      >>
      \context Lyrics = FCLyricsA \lyricsto FCVoiceLyrics \FCVerseA
      \context Lyrics = FCLyricsAAlt \lyricsto FCVoiceLyrics \FCVerseAAlt
      \context Lyrics = FCLyricsB \lyricsto FCVoiceLyrics \FCVerseB
      \context Lyrics = FCLyricsBAlt \lyricsto FCVoiceLyrics \FCVerseBAlt
      \context Lyrics = FCLyricsC \lyricsto FCVoiceLyrics \FCVerseC
      \context Lyrics = FCLyricsCAlt \lyricsto FCVoiceLyrics \FCVerseCAlt
      \context Lyrics = FCLyricsD \lyricsto FCVoiceLyrics \FCVerseD
      \context Lyrics = FCLyricsDAlt \lyricsto FCVoiceLyrics \FCVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = FDStaffGroup <<
      \context Staff = FDStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = FDVoiceLyrics \ FDxCBFDMusicLyrics
        \context Voice = FDVoiceRH \ FDxCBFDMusicRH
      >>
      \new Lyrics  = FDLyricsA
      \new Lyrics = FDLyricsAAlt
      \new Lyrics  = FDLyricsB
      \new Lyrics  = FDLyricsC
      \new Lyrics = FDLyricsCAlt
      \new Lyrics  = FDLyricsD
      \new Lyrics = FDLyricsDAlt
      \new Lyrics  = FDLyricsE
      \new Lyrics = FDLyricsEAlt
>>
      \context Staff = FDStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = FDVoiceLH \FDxCBFDMusicLH
      >>
      \context Lyrics = FDLyricsA \lyricsto FDVoiceLyrics \FDVerseA
      \context Lyrics = FDLyricsAAlt \lyricsto FDVoiceLyrics \FDVerseAAlt
      \context Lyrics = FDLyricsB \lyricsto FDVoiceLyrics \FDChorus
      \context Lyrics = FDLyricsC \lyricsto FDVoiceLyrics \FDVerseB
      \context Lyrics = FDLyricsCAlt \lyricsto FDVoiceLyrics \FDVerseBAlt
      \context Lyrics = FDLyricsD \lyricsto FDVoiceLyrics \FDVerseC
      \context Lyrics = FDLyricsDAlt \lyricsto FDVoiceLyrics \FDVerseCAlt
      \context Lyrics = FDLyricsE \lyricsto FDVoiceLyrics \FDVerseD
      \context Lyrics = FDLyricsEAlt \lyricsto FDVoiceLyrics \FDVerseDAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = FEStaffGroup <<
      \context Staff = FEStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = FEVoiceLyrics \ FExAFEMusicLyrics
        \context Voice = FEVoiceRH \ FExAFEMusicRH
      >>
      \new Lyrics  = FELyricsA
      \new Lyrics = FELyricsAAlt
      \new Lyrics  = FELyricsB
      \new Lyrics  = FELyricsC
      \new Lyrics = FELyricsCAlt
      \new Lyrics  = FELyricsD
      \new Lyrics = FELyricsDAlt
>>
      \context Staff = FEStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = FEVoiceLH \FExAFEMusicLH
      >>
      \context Lyrics = FELyricsA \lyricsto FEVoiceLyrics \FEVerseA
      \context Lyrics = FELyricsAAlt \lyricsto FEVoiceLyrics \FEVerseAAlt
      \context Lyrics = FELyricsB \lyricsto FEVoiceLyrics \FEChorus
      \context Lyrics = FELyricsC \lyricsto FEVoiceLyrics \FEVerseB
      \context Lyrics = FELyricsCAlt \lyricsto FEVoiceLyrics \FEVerseBAlt
      \context Lyrics = FELyricsD \lyricsto FEVoiceLyrics \FEVerseC
      \context Lyrics = FELyricsDAlt \lyricsto FEVoiceLyrics \FEVerseCAlt
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"

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
\score {
  <<
    \context StaffGroup = FFStaffGroup <<
      \context Staff = FFStaffRH <<
        \override Staff.BarLine #'allow-span-bar  = ##f
        \set Staff.printPartCombineTexts = ##f
        \context NullVoice = FFVoiceLyrics \ FFxFFMusicLyrics
        \context Voice = FFVoiceRH \ FFxFFMusicRH
      >>
>>
      \context Staff = FFStaffLH <<
        \set Staff.printPartCombineTexts = ##f
        \context Voice = FFVoiceLH \FFxFFMusicLH
      >>
  >>
  \include "../Lib/HymnScoreSettings.ly"
}
\include "../Lib/HymnLayoutOutput.ly"
