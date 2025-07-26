\version "2.22.0"
#(ly:set-option 'point-and-click #f)
\include "Afrikaans1989Lyrics.ly"
chorusStr = Koor
\include "Afrikaans1989Music.ly"
\include "../Lib/HymnSetup.ly"
#(set! paper-alist (cons '("my size" . (cons (* 148 mm) (* 210 mm))) paper-alist))
#(set-default-paper-size "my size")
#(set-global-staff-size 13.8992) 

\paper {
  two-sided = ##t 
  indent = 0 \mm 

 page-breaking = #ly:page-turn-breaking
% annotate-spacing = ##t
  top-margin = 20\mm
  bottom-margin=20\mm
  inner-margin = 20\mm
  outer-margin = 20\mm
system-system-spacing =  #'((basic-distance . 6)  (padding . 1) (stretchability . 60) (minimum-distance . 4))
  score-markup-spacing = #'((basic-distance . 8) (padding . 2) (stretchability . 120)(minimum-distance . 4))  
  markup-system-spacing = #'((basic-distance . 6) (padding . 1) (stretchability . 40) (minimum-distance .  3))
  score-system-spacing = #'((basic-distance . 6) (minimum-distance . 1) (padding . 2) (stretchability . 60))  
 markup-markup-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 0) (stretchability . 0))}
\include "../Lib/HymnCommon.ly"
\layout {
  \context {
    \Score
 \override LyricText #'font-size = #-.5984 }}

\bookpart {
\include "../Lib/HymnBookPartSetup.ly"
\markup \column{
    \justify-line {
        \fontsize #6 \bold {1}
        \fontsize #6 \center-align \line {ነጀ my bronne}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {246}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AStaffGroup <<
        \context Staff = AStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AVoiceLyrics \BCAFFxBDFMusicLyrics
            \context Voice = AVoiceRH \BCAFFxBDFMusicRH
        >>
        \new Lyrics  = ALyricsA
        \new Lyrics = ALyricsAAlt
        \new Lyrics  = ALyricsB
        \new Lyrics = ALyricsBAlt
        \new Lyrics  = ALyricsC
        \new Lyrics = ALyricsCAlt
        \new Lyrics  = ALyricsD
        \new Lyrics = ALyricsDAlt
        \context Staff = AStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AVoiceLH \BCAFFxBDFMusicLH
        >>
        \context Lyrics = ALyricsA \lyricsto AVoiceLyrics \AVerseA
        \context Lyrics = ALyricsAAlt \lyricsto AVoiceLyrics \AVerseAAlt
        \context Lyrics = ALyricsB \lyricsto AVoiceLyrics \AVerseB
        \context Lyrics = ALyricsBAlt \lyricsto AVoiceLyrics \AVerseBAlt
        \context Lyrics = ALyricsC \lyricsto AVoiceLyrics \AVerseC
        \context Lyrics = ALyricsCAlt \lyricsto AVoiceLyrics \AVerseCAlt
        \context Lyrics = ALyricsD \lyricsto AVoiceLyrics \AVerseD
        \context Lyrics = ALyricsDAlt \lyricsto AVoiceLyrics \AVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {2}
        \fontsize #6 \center-align \line {Altyd voorwaarts}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {100}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BStaffGroup <<
        \context Staff = BStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BVoiceLyrics \BBFIFxAZZMusicLyrics
            \context Voice = BVoiceRH \BBFIFxAZZMusicRH
        >>
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
            \context Voice = BVoiceLH \BBFIFxAZZMusicLH
        >>
        \context Lyrics = BLyricsA \lyricsto BVoiceLyrics \BVerseA
        \context Lyrics = BLyricsAAlt \lyricsto BVoiceLyrics \BVerseAAlt
        \context Lyrics = BLyricsB \lyricsto BVoiceLyrics \BVerseB
        \context Lyrics = BLyricsBAlt \lyricsto BVoiceLyrics \BVerseBAlt
        \context Lyrics = BLyricsC \lyricsto BVoiceLyrics \BVerseC
        \context Lyrics = BLyricsCAlt \lyricsto BVoiceLyrics \BVerseCAlt
        \context Lyrics = BLyricsD \lyricsto BVoiceLyrics \BVerseD
        \context Lyrics = BLyricsDAlt \lyricsto BVoiceLyrics \BVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {3}
        \fontsize #6 \center-align \line {As die Heiland roep}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {129}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CStaffGroup <<
        \context Staff = CStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CVoiceLyrics \BBFIGxABILessSylMusicLyrics
            \context Voice = CVoiceRH \BBFIGxABILessSylMusicRH
        >>
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
            \context Voice = CVoiceLH \BBFIGxABILessSylMusicLH
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
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {4}
        \fontsize #6 \center-align \line {As ek die Kruishout}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {6}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DStaffGroup <<
        \context Staff = DStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DVoiceLyrics \BBFIHxFMusicLyrics
            \context Voice = DVoiceRH \BBFIHxFMusicRH
        >>
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
            \context Voice = DVoiceLH \BBFIHxFMusicLH
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
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {5}
        \fontsize #6 \center-align \line {As ek dink aan my Heiland}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {355}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EStaffGroup <<
        \context Staff = EStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EVoiceLyrics \BBFIIxCEEMusicLyrics
            \context Voice = EVoiceRH \BBFIIxCEEMusicRH
        >>
        \new Lyrics  = ELyricsA
        \new Lyrics = ELyricsAAlt
        \new Lyrics  = ELyricsB
        \new Lyrics = ELyricsBAlt
        \new Lyrics  = ELyricsC
        \new Lyrics = ELyricsCAlt
        \context Staff = EStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EVoiceLH \BBFIIxCEEMusicLH
        >>
        \context Lyrics = ELyricsA \lyricsto EVoiceLyrics \EVerseA
        \context Lyrics = ELyricsAAlt \lyricsto EVoiceLyrics \EVerseAAlt
        \context Lyrics = ELyricsB \lyricsto EVoiceLyrics \EVerseB
        \context Lyrics = ELyricsBAlt \lyricsto EVoiceLyrics \EVerseBAlt
        \context Lyrics = ELyricsC \lyricsto EVoiceLyrics \EVerseC
        \context Lyrics = ELyricsCAlt \lyricsto EVoiceLyrics \EVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {6}
        \fontsize #6 \center-align \line {As my hart so swaar}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {287}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FStaffGroup <<
        \context Staff = FStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FVoiceLyrics \BBGZZxBHGMusicLyrics
            \context Voice = FVoiceRH \BBGZZxBHGMusicRH
        >>
        \new Lyrics  = FLyricsA
        \new Lyrics = FLyricsAAlt
        \new Lyrics  = FLyricsB
        \new Lyrics = FLyricsBAlt
        \new Lyrics  = FLyricsC
        \new Lyrics = FLyricsCAlt
        \new Lyrics  = FLyricsD
        \new Lyrics = FLyricsDAlt
        \context Staff = FStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FVoiceLH \BBGZZxBHGMusicLH
        >>
        \context Lyrics = FLyricsA \lyricsto FVoiceLyrics \FVerseA
        \context Lyrics = FLyricsAAlt \lyricsto FVoiceLyrics \FVerseAAlt
        \context Lyrics = FLyricsB \lyricsto FVoiceLyrics \FVerseB
        \context Lyrics = FLyricsBAlt \lyricsto FVoiceLyrics \FVerseBAlt
        \context Lyrics = FLyricsC \lyricsto FVoiceLyrics \FVerseC
        \context Lyrics = FLyricsCAlt \lyricsto FVoiceLyrics \FVerseCAlt
        \context Lyrics = FLyricsD \lyricsto FVoiceLyrics \FVerseD
        \context Lyrics = FLyricsDAlt \lyricsto FVoiceLyrics \FVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {7}
        \fontsize #6 \center-align \line {As ons dae so stil}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {106}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GStaffGroup <<
        \context Staff = GStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GVoiceLyrics \BBGZAxAZFMusicLyrics
            \context Voice = GVoiceRH \BBGZAxAZFMusicRH
        >>
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
            \context Voice = GVoiceLH \BBGZAxAZFMusicLH
        >>
        \context Lyrics = GLyricsA \lyricsto GVoiceLyrics \GVerseA
        \context Lyrics = GLyricsAAlt \lyricsto GVoiceLyrics \GVerseAAlt
        \context Lyrics = GLyricsB \lyricsto GVoiceLyrics \GVerseB
        \context Lyrics = GLyricsBAlt \lyricsto GVoiceLyrics \GVerseBAlt
        \context Lyrics = GLyricsC \lyricsto GVoiceLyrics \GVerseC
        \context Lyrics = GLyricsCAlt \lyricsto GVoiceLyrics \GVerseCAlt
        \context Lyrics = GLyricsD \lyricsto GVoiceLyrics \GVerseD
        \context Lyrics = GLyricsDAlt \lyricsto GVoiceLyrics \GVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {8}
        \fontsize #6 \center-align \line {As skoon is die lug}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {350}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HStaffGroup <<
        \context Staff = HStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HVoiceLyrics \BBGZBxCEZMusicLyrics
            \context Voice = HVoiceRH \BBGZBxCEZMusicRH
        >>
        \new Lyrics  = HLyricsA
        \new Lyrics = HLyricsAAlt
        \new Lyrics  = HLyricsB
        \new Lyrics = HLyricsBAlt
        \new Lyrics  = HLyricsC
        \new Lyrics = HLyricsCAlt
        \context Staff = HStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HVoiceLH \BBGZBxCEZMusicLH
        >>
        \context Lyrics = HLyricsA \lyricsto HVoiceLyrics \HVerseA
        \context Lyrics = HLyricsAAlt \lyricsto HVoiceLyrics \HVerseAAlt
        \context Lyrics = HLyricsB \lyricsto HVoiceLyrics \HVerseB
        \context Lyrics = HLyricsBAlt \lyricsto HVoiceLyrics \HVerseBAlt
        \context Lyrics = HLyricsC \lyricsto HVoiceLyrics \HVerseC
        \context Lyrics = HLyricsCAlt \lyricsto HVoiceLyrics \HVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {9}
        \fontsize #6 \center-align \line {As storme woedend}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {409}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IStaffGroup <<
        \context Staff = IStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IVoiceLyrics \BBGZCxDZIMusicLyrics
            \context Voice = IVoiceRH \BBGZCxDZIMusicRH
        >>
        \new Lyrics  = ILyricsA
        \new Lyrics = ILyricsAAlt
        \new Lyrics  = ILyricsB
        \new Lyrics = ILyricsBAlt
        \new Lyrics  = ILyricsC
        \new Lyrics = ILyricsCAlt
        \new Lyrics  = ILyricsD
        \new Lyrics = ILyricsDAlt
        \context Staff = IStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IVoiceLH \BBGZCxDZIMusicLH
        >>
        \context Lyrics = ILyricsA \lyricsto IVoiceLyrics \IVerseA
        \context Lyrics = ILyricsAAlt \lyricsto IVoiceLyrics \IVerseAAlt
        \context Lyrics = ILyricsB \lyricsto IVoiceLyrics \IVerseB
        \context Lyrics = ILyricsBAlt \lyricsto IVoiceLyrics \IVerseBAlt
        \context Lyrics = ILyricsC \lyricsto IVoiceLyrics \IVerseC
        \context Lyrics = ILyricsCAlt \lyricsto IVoiceLyrics \IVerseCAlt
        \context Lyrics = ILyricsD \lyricsto IVoiceLyrics \IVerseD
        \context Lyrics = ILyricsDAlt \lyricsto IVoiceLyrics \IVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {10}
        \fontsize #6 \center-align \line {As swaar beproewings}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {326}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZStaffGroup <<
        \context Staff = AZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZVoiceLyrics \BBGZDxCBFMusicLyrics
            \context Voice = AZVoiceRH \BBGZDxCBFMusicRH
        >>
        \new Lyrics  = AZLyricsA
        \new Lyrics = AZLyricsAAlt
        \new Lyrics  = AZLyricsB
        \new Lyrics = AZLyricsBAlt
        \new Lyrics  = AZLyricsC
        \new Lyrics = AZLyricsCAlt
        \new Lyrics  = AZLyricsD
        \new Lyrics = AZLyricsDAlt
        \new Lyrics  = AZLyricsE
        \new Lyrics = AZLyricsEAlt
        \context Staff = AZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZVoiceLH \BBGZDxCBFMusicLH
        >>
        \context Lyrics = AZLyricsA \lyricsto AZVoiceLyrics \AZVerseA
        \context Lyrics = AZLyricsAAlt \lyricsto AZVoiceLyrics \AZVerseAAlt
        \context Lyrics = AZLyricsB \lyricsto AZVoiceLyrics \AZVerseB
        \context Lyrics = AZLyricsBAlt \lyricsto AZVoiceLyrics \AZVerseBAlt
        \context Lyrics = AZLyricsC \lyricsto AZVoiceLyrics \AZVerseC
        \context Lyrics = AZLyricsCAlt \lyricsto AZVoiceLyrics \AZVerseCAlt
        \context Lyrics = AZLyricsD \lyricsto AZVoiceLyrics \AZVerseD
        \context Lyrics = AZLyricsDAlt \lyricsto AZVoiceLyrics \AZVerseDAlt
        \context Lyrics = AZLyricsE \lyricsto AZVoiceLyrics \AZVerseE
        \context Lyrics = AZLyricsEAlt \lyricsto AZVoiceLyrics \AZVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {11}
        \fontsize #6 \center-align \line {Begin die dag met God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {187}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAStaffGroup <<
        \context Staff = AAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAVoiceLyrics \BBGZExAHGMusicLyrics
            \context Voice = AAVoiceRH \BBGZExAHGMusicRH
        >>
        \new Lyrics  = AALyricsA
        \new Lyrics = AALyricsAAlt
        \new Lyrics  = AALyricsB
        \new Lyrics = AALyricsBAlt
        \new Lyrics  = AALyricsC
        \new Lyrics = AALyricsCAlt
        \new Lyrics  = AALyricsD
        \new Lyrics = AALyricsDAlt
        \new Lyrics  = AALyricsE
        \new Lyrics = AALyricsEAlt
        \context Staff = AAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAVoiceLH \BBGZExAHGMusicLH
        >>
        \context Lyrics = AALyricsA \lyricsto AAVoiceLyrics \AAVerseA
        \context Lyrics = AALyricsAAlt \lyricsto AAVoiceLyrics \AAVerseAAlt
        \context Lyrics = AALyricsB \lyricsto AAVoiceLyrics \AAVerseB
        \context Lyrics = AALyricsBAlt \lyricsto AAVoiceLyrics \AAVerseBAlt
        \context Lyrics = AALyricsC \lyricsto AAVoiceLyrics \AAVerseC
        \context Lyrics = AALyricsCAlt \lyricsto AAVoiceLyrics \AAVerseCAlt
        \context Lyrics = AALyricsD \lyricsto AAVoiceLyrics \AAVerseD
        \context Lyrics = AALyricsDAlt \lyricsto AAVoiceLyrics \AAVerseDAlt
        \context Lyrics = AALyricsE \lyricsto AAVoiceLyrics \AAVerseE
        \context Lyrics = AALyricsEAlt \lyricsto AAVoiceLyrics \AAVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {12}
        \fontsize #6 \center-align \line {Behou u greep, o siel}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {338}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABStaffGroup <<
        \context Staff = ABStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABVoiceLyrics \BBGZFxDFMusicLyrics
            \context Voice = ABVoiceRH \BBGZFxDFMusicRH
        >>
        \new Lyrics  = ABLyricsA
        \new Lyrics = ABLyricsAAlt
        \new Lyrics  = ABLyricsB
        \new Lyrics = ABLyricsBAlt
        \new Lyrics  = ABLyricsC
        \new Lyrics = ABLyricsCAlt
        \new Lyrics  = ABLyricsD
        \new Lyrics = ABLyricsDAlt
        \context Staff = ABStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABVoiceLH \BBGZFxDFMusicLH
        >>
        \context Lyrics = ABLyricsA \lyricsto ABVoiceLyrics \ABVerseA
        \context Lyrics = ABLyricsAAlt \lyricsto ABVoiceLyrics \ABVerseAAlt
        \context Lyrics = ABLyricsB \lyricsto ABVoiceLyrics \ABVerseB
        \context Lyrics = ABLyricsBAlt \lyricsto ABVoiceLyrics \ABVerseBAlt
        \context Lyrics = ABLyricsC \lyricsto ABVoiceLyrics \ABVerseC
        \context Lyrics = ABLyricsCAlt \lyricsto ABVoiceLyrics \ABVerseCAlt
        \context Lyrics = ABLyricsD \lyricsto ABVoiceLyrics \ABVerseD
        \context Lyrics = ABLyricsDAlt \lyricsto ABVoiceLyrics \ABVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {13}
        \fontsize #6 \center-align \line {Biddend in die Gees}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {192}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACStaffGroup <<
        \context Staff = ACStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACVoiceLyrics \BBGZGxAIBMusicLyrics
            \context Voice = ACVoiceRH \BBGZGxAIBMusicRH
        >>
        \new Lyrics  = ACLyricsA
        \new Lyrics = ACLyricsAAlt
        \new Lyrics  = ACLyricsB
        \new Lyrics = ACLyricsBAlt
        \new Lyrics  = ACLyricsC
        \new Lyrics = ACLyricsCAlt
        \new Lyrics  = ACLyricsD
        \new Lyrics = ACLyricsDAlt
        \context Staff = ACStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACVoiceLH \BBGZGxAIBMusicLH
        >>
        \context Lyrics = ACLyricsA \lyricsto ACVoiceLyrics \ACVerseA
        \context Lyrics = ACLyricsAAlt \lyricsto ACVoiceLyrics \ACVerseAAlt
        \context Lyrics = ACLyricsB \lyricsto ACVoiceLyrics \ACVerseB
        \context Lyrics = ACLyricsBAlt \lyricsto ACVoiceLyrics \ACVerseBAlt
        \context Lyrics = ACLyricsC \lyricsto ACVoiceLyrics \ACVerseC
        \context Lyrics = ACLyricsCAlt \lyricsto ACVoiceLyrics \ACVerseCAlt
        \context Lyrics = ACLyricsD \lyricsto ACVoiceLyrics \ACVerseD
        \context Lyrics = ACLyricsDAlt \lyricsto ACVoiceLyrics \ACVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {14}
        \fontsize #6 \center-align \line {Bly by ons Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {170}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADStaffGroup <<
        \context Staff = ADStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADVoiceLyrics \BBGZHxAGZMusicLyrics
            \context Voice = ADVoiceRH \BBGZHxAGZMusicRH
        >>
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
            \context Voice = ADVoiceLH \BBGZHxAGZMusicLH
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
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {15}
        \fontsize #6 \center-align \line {Bly in die Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {394}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEStaffGroup <<
        \context Staff = AEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEVoiceLyrics \BBGZIxCIDMusicLyrics
            \context Voice = AEVoiceRH \BBGZIxCIDMusicRH
        >>
        \new Lyrics  = AELyricsA
        \new Lyrics = AELyricsAAlt
        \new Lyrics  = AELyricsB
        \new Lyrics = AELyricsBAlt
        \new Lyrics  = AELyricsC
        \new Lyrics = AELyricsCAlt
        \new Lyrics  = AELyricsD
        \new Lyrics = AELyricsDAlt
        \new Lyrics  = AELyricsE
        \new Lyrics = AELyricsEAlt
        \new Lyrics  = AELyricsF
        \new Lyrics = AELyricsFAlt
        \context Staff = AEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEVoiceLH \BBGZIxCIDMusicLH
        >>
        \context Lyrics = AELyricsA \lyricsto AEVoiceLyrics \AEVerseA
        \context Lyrics = AELyricsAAlt \lyricsto AEVoiceLyrics \AEVerseAAlt
        \context Lyrics = AELyricsB \lyricsto AEVoiceLyrics \AEVerseB
        \context Lyrics = AELyricsBAlt \lyricsto AEVoiceLyrics \AEVerseBAlt
        \context Lyrics = AELyricsC \lyricsto AEVoiceLyrics \AEVerseC
        \context Lyrics = AELyricsCAlt \lyricsto AEVoiceLyrics \AEVerseCAlt
        \context Lyrics = AELyricsD \lyricsto AEVoiceLyrics \AEVerseD
        \context Lyrics = AELyricsDAlt \lyricsto AEVoiceLyrics \AEVerseDAlt
        \context Lyrics = AELyricsE \lyricsto AEVoiceLyrics \AEVerseE
        \context Lyrics = AELyricsEAlt \lyricsto AEVoiceLyrics \AEVerseEAlt
        \context Lyrics = AELyricsF \lyricsto AEVoiceLyrics \AEVerseF
        \context Lyrics = AELyricsFAlt \lyricsto AEVoiceLyrics \AEVerseFAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {16}
        \fontsize #6 \center-align \line {Breek U die lewensbrood}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {171}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFStaffGroup <<
        \context Staff = AFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFVoiceLyrics \BBGAZxAGAMusicLyrics
            \context Voice = AFVoiceRH \BBGAZxAGAMusicRH
        >>
        \new Lyrics  = AFLyricsA
        \new Lyrics = AFLyricsAAlt
        \new Lyrics  = AFLyricsB
        \new Lyrics = AFLyricsBAlt
        \new Lyrics  = AFLyricsC
        \new Lyrics = AFLyricsCAlt
        \new Lyrics  = AFLyricsD
        \new Lyrics = AFLyricsDAlt
        \context Staff = AFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFVoiceLH \BBGAZxAGAMusicLH
        >>
        \context Lyrics = AFLyricsA \lyricsto AFVoiceLyrics \AFVerseA
        \context Lyrics = AFLyricsAAlt \lyricsto AFVoiceLyrics \AFVerseAAlt
        \context Lyrics = AFLyricsB \lyricsto AFVoiceLyrics \AFVerseB
        \context Lyrics = AFLyricsBAlt \lyricsto AFVoiceLyrics \AFVerseBAlt
        \context Lyrics = AFLyricsC \lyricsto AFVoiceLyrics \AFVerseC
        \context Lyrics = AFLyricsCAlt \lyricsto AFVoiceLyrics \AFVerseCAlt
        \context Lyrics = AFLyricsD \lyricsto AFVoiceLyrics \AFVerseD
        \context Lyrics = AFLyricsDAlt \lyricsto AFVoiceLyrics \AFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {17}
        \fontsize #6 \center-align \line {Bring my die boodskap}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {1}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGStaffGroup <<
        \context Staff = AGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGVoiceLyrics \BBGAAxAMusicLyrics
            \context Voice = AGVoiceRH \BBGAAxAMusicRH
        >>
        \new Lyrics  = AGLyricsA
        \new Lyrics = AGLyricsAAlt
        \new Lyrics  = AGLyricsB
        \new Lyrics = AGLyricsBAlt
        \new Lyrics  = AGLyricsC
        \new Lyrics = AGLyricsCAlt
        \context Staff = AGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGVoiceLH \BBGAAxAMusicLH
        >>
        \new Lyrics = AGLyricsBelow
        \context Lyrics = AGLyricsA \lyricsto AGVoiceLyrics \AGVerseA
        \context Lyrics = AGLyricsAAlt \lyricsto AGVoiceLyrics \AGVerseAAlt
        \context Lyrics = AGLyricsB \lyricsto AGVoiceLyrics \AGVerseB
        \context Lyrics = AGLyricsBAlt \lyricsto AGVoiceLyrics \AGVerseBAlt
        \context Lyrics = AGLyricsC \lyricsto AGVoiceLyrics \AGVerseC
        \context Lyrics = AGLyricsCAlt \lyricsto AGVoiceLyrics \AGVerseCAlt
        \context Lyrics = AGLyricsBelow \lyricsto AGVoiceLyrics \AGBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {18}
        \fontsize #6 \center-align \line {Christus kom nou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {398}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHStaffGroup <<
        \context Staff = AHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHVoiceLyrics \BBGABxCIHMusicLyrics
            \context Voice = AHVoiceRH \BBGABxCIHMusicRH
        >>
        \new Lyrics  = AHLyricsA
        \new Lyrics = AHLyricsAAlt
        \new Lyrics  = AHLyricsB
        \new Lyrics = AHLyricsBAlt
        \new Lyrics  = AHLyricsC
        \new Lyrics = AHLyricsCAlt
        \context Staff = AHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHVoiceLH \BBGABxCIHMusicLH
        >>
        \context Lyrics = AHLyricsA \lyricsto AHVoiceLyrics \AHVerseA
        \context Lyrics = AHLyricsAAlt \lyricsto AHVoiceLyrics \AHVerseAAlt
        \context Lyrics = AHLyricsB \lyricsto AHVoiceLyrics \AHVerseB
        \context Lyrics = AHLyricsBAlt \lyricsto AHVoiceLyrics \AHVerseBAlt
        \context Lyrics = AHLyricsC \lyricsto AHVoiceLyrics \AHVerseC
        \context Lyrics = AHLyricsCAlt \lyricsto AHVoiceLyrics \AHVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {19}
        \fontsize #6 \center-align \line {Daal lewenseinde}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {412}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIStaffGroup <<
        \context Staff = AIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIVoiceLyrics \BBGACxDABMusicLyrics
            \context Voice = AIVoiceRH \BBGACxDABMusicRH
        >>
        \new Lyrics  = AILyricsA
        \new Lyrics = AILyricsAAlt
        \new Lyrics  = AILyricsB
        \new Lyrics = AILyricsBAlt
        \new Lyrics  = AILyricsC
        \new Lyrics = AILyricsCAlt
        \new Lyrics  = AILyricsD
        \new Lyrics = AILyricsDAlt
        \context Staff = AIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIVoiceLH \BBGACxDABMusicLH
        >>
        \context Lyrics = AILyricsA \lyricsto AIVoiceLyrics \AIVerseA
        \context Lyrics = AILyricsAAlt \lyricsto AIVoiceLyrics \AIVerseAAlt
        \context Lyrics = AILyricsB \lyricsto AIVoiceLyrics \AIVerseB
        \context Lyrics = AILyricsBAlt \lyricsto AIVoiceLyrics \AIVerseBAlt
        \context Lyrics = AILyricsC \lyricsto AIVoiceLyrics \AIVerseC
        \context Lyrics = AILyricsCAlt \lyricsto AIVoiceLyrics \AIVerseCAlt
        \context Lyrics = AILyricsD \lyricsto AIVoiceLyrics \AIVerseD
        \context Lyrics = AILyricsDAlt \lyricsto AIVoiceLyrics \AIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {20}
        \fontsize #6 \center-align \line {Daar is 'n Heiland}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {156}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZStaffGroup <<
        \context Staff = BZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZVoiceLyrics \BBGADxAEFMusicLyrics
            \context Voice = BZVoiceRH \BBGADxAEFMusicRH
        >>
        \new Lyrics  = BZLyricsA
        \new Lyrics = BZLyricsAAlt
        \new Lyrics  = BZLyricsB
        \new Lyrics = BZLyricsBAlt
        \new Lyrics  = BZLyricsC
        \new Lyrics = BZLyricsCAlt
        \context Staff = BZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZVoiceLH \BBGADxAEFMusicLH
        >>
        \context Lyrics = BZLyricsA \lyricsto BZVoiceLyrics \BZVerseA
        \context Lyrics = BZLyricsAAlt \lyricsto BZVoiceLyrics \BZVerseAAlt
        \context Lyrics = BZLyricsB \lyricsto BZVoiceLyrics \BZVerseB
        \context Lyrics = BZLyricsBAlt \lyricsto BZVoiceLyrics \BZVerseBAlt
        \context Lyrics = BZLyricsC \lyricsto BZVoiceLyrics \BZVerseC
        \context Lyrics = BZLyricsCAlt \lyricsto BZVoiceLyrics \BZVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {21}
        \fontsize #6 \center-align \line {Daar is 'n weg}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {42}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAStaffGroup <<
        \context Staff = BAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAVoiceLyrics \BBGAExDBMusicLyrics
            \context Voice = BAVoiceRH \BBGAExDBMusicRH
        >>
        \new Lyrics  = BALyricsA
        \new Lyrics = BALyricsAAlt
        \new Lyrics  = BALyricsB
        \new Lyrics = BALyricsBAlt
        \new Lyrics  = BALyricsC
        \new Lyrics = BALyricsCAlt
        \new Lyrics  = BALyricsD
        \new Lyrics = BALyricsDAlt
        \context Staff = BAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAVoiceLH \BBGAExDBMusicLH
        >>
        \context Lyrics = BALyricsA \lyricsto BAVoiceLyrics \BAVerseA
        \context Lyrics = BALyricsAAlt \lyricsto BAVoiceLyrics \BAVerseAAlt
        \context Lyrics = BALyricsB \lyricsto BAVoiceLyrics \BAVerseB
        \context Lyrics = BALyricsBAlt \lyricsto BAVoiceLyrics \BAVerseBAlt
        \context Lyrics = BALyricsC \lyricsto BAVoiceLyrics \BAVerseC
        \context Lyrics = BALyricsCAlt \lyricsto BAVoiceLyrics \BAVerseCAlt
        \context Lyrics = BALyricsD \lyricsto BAVoiceLyrics \BAVerseD
        \context Lyrics = BALyricsDAlt \lyricsto BAVoiceLyrics \BAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {22}
        \fontsize #6 \center-align \line {Daar kom donker dae}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {261}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBStaffGroup <<
        \context Staff = BBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBVoiceLyrics \BBGAFxBFAMusicLyrics
            \context Voice = BBVoiceRH \BBGAFxBFAMusicRH
        >>
        \new Lyrics  = BBLyricsA
        \new Lyrics = BBLyricsAAlt
        \new Lyrics  = BBLyricsB
        \new Lyrics = BBLyricsBAlt
        \new Lyrics  = BBLyricsC
        \new Lyrics = BBLyricsCAlt
        \new Lyrics  = BBLyricsD
        \new Lyrics = BBLyricsDAlt
        \context Staff = BBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBVoiceLH \BBGAFxBFAMusicLH
        >>
        \context Lyrics = BBLyricsA \lyricsto BBVoiceLyrics \BBVerseA
        \context Lyrics = BBLyricsAAlt \lyricsto BBVoiceLyrics \BBVerseAAlt
        \context Lyrics = BBLyricsB \lyricsto BBVoiceLyrics \BBVerseB
        \context Lyrics = BBLyricsBAlt \lyricsto BBVoiceLyrics \BBVerseBAlt
        \context Lyrics = BBLyricsC \lyricsto BBVoiceLyrics \BBVerseC
        \context Lyrics = BBLyricsCAlt \lyricsto BBVoiceLyrics \BBVerseCAlt
        \context Lyrics = BBLyricsD \lyricsto BBVoiceLyrics \BBVerseD
        \context Lyrics = BBLyricsDAlt \lyricsto BBVoiceLyrics \BBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {23}
        \fontsize #6 \center-align \line {Deur die nag van smart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {334}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCStaffGroup <<
        \context Staff = BCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCVoiceLyrics \BBGAGxCCDMusicLyrics
            \context Voice = BCVoiceRH \BBGAGxCCDMusicRH
        >>
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
        \new Lyrics  = BCLyricsF
        \new Lyrics = BCLyricsFAlt
        \context Staff = BCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCVoiceLH \BBGAGxCCDMusicLH
        >>
        \context Lyrics = BCLyricsA \lyricsto BCVoiceLyrics \BCVerseA
        \context Lyrics = BCLyricsAAlt \lyricsto BCVoiceLyrics \BCVerseAAlt
        \context Lyrics = BCLyricsB \lyricsto BCVoiceLyrics \BCVerseB
        \context Lyrics = BCLyricsBAlt \lyricsto BCVoiceLyrics \BCVerseBAlt
        \context Lyrics = BCLyricsC \lyricsto BCVoiceLyrics \BCVerseC
        \context Lyrics = BCLyricsCAlt \lyricsto BCVoiceLyrics \BCVerseCAlt
        \context Lyrics = BCLyricsD \lyricsto BCVoiceLyrics \BCVerseD
        \context Lyrics = BCLyricsDAlt \lyricsto BCVoiceLyrics \BCVerseDAlt
        \context Lyrics = BCLyricsE \lyricsto BCVoiceLyrics \BCVerseE
        \context Lyrics = BCLyricsEAlt \lyricsto BCVoiceLyrics \BCVerseEAlt
        \context Lyrics = BCLyricsF \lyricsto BCVoiceLyrics \BCVerseF
        \context Lyrics = BCLyricsFAlt \lyricsto BCVoiceLyrics \BCVerseFAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {24}
        \fontsize #6 \center-align \line {Deur eer en oneer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {298}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDStaffGroup <<
        \context Staff = BDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDVoiceLyrics \BBGAHxBIHMusicLyrics
            \context Voice = BDVoiceRH \BBGAHxBIHMusicRH
        >>
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
        \context Staff = BDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDVoiceLH \BBGAHxBIHMusicLH
        >>
        \context Lyrics = BDLyricsA \lyricsto BDVoiceLyrics \BDVerseA
        \context Lyrics = BDLyricsAAlt \lyricsto BDVoiceLyrics \BDVerseAAlt
        \context Lyrics = BDLyricsB \lyricsto BDVoiceLyrics \BDVerseB
        \context Lyrics = BDLyricsBAlt \lyricsto BDVoiceLyrics \BDVerseBAlt
        \context Lyrics = BDLyricsC \lyricsto BDVoiceLyrics \BDVerseC
        \context Lyrics = BDLyricsCAlt \lyricsto BDVoiceLyrics \BDVerseCAlt
        \context Lyrics = BDLyricsD \lyricsto BDVoiceLyrics \BDVerseD
        \context Lyrics = BDLyricsDAlt \lyricsto BDVoiceLyrics \BDVerseDAlt
        \context Lyrics = BDLyricsE \lyricsto BDVoiceLyrics \BDVerseE
        \context Lyrics = BDLyricsEAlt \lyricsto BDVoiceLyrics \BDVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {25}
        \fontsize #6 \center-align \line {Deurgrond my hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {379}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BEStaffGroup <<
        \context Staff = BEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BEVoiceLyrics \BBGAIxCGIMusicLyrics
            \context Voice = BEVoiceRH \BBGAIxCGIMusicRH
        >>
        \new Lyrics  = BELyricsA
        \new Lyrics = BELyricsAAlt
        \new Lyrics  = BELyricsB
        \new Lyrics = BELyricsBAlt
        \new Lyrics  = BELyricsC
        \new Lyrics = BELyricsCAlt
        \new Lyrics  = BELyricsD
        \new Lyrics = BELyricsDAlt
        \context Staff = BEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BEVoiceLH \BBGAIxCGIMusicLH
        >>
        \context Lyrics = BELyricsA \lyricsto BEVoiceLyrics \BEVerseA
        \context Lyrics = BELyricsAAlt \lyricsto BEVoiceLyrics \BEVerseAAlt
        \context Lyrics = BELyricsB \lyricsto BEVoiceLyrics \BEVerseB
        \context Lyrics = BELyricsBAlt \lyricsto BEVoiceLyrics \BEVerseBAlt
        \context Lyrics = BELyricsC \lyricsto BEVoiceLyrics \BEVerseC
        \context Lyrics = BELyricsCAlt \lyricsto BEVoiceLyrics \BEVerseCAlt
        \context Lyrics = BELyricsD \lyricsto BEVoiceLyrics \BEVerseD
        \context Lyrics = BELyricsDAlt \lyricsto BEVoiceLyrics \BEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {26}
        \fontsize #6 \center-align \line {Die God van hemel}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {403}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BFStaffGroup <<
        \context Staff = BFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BFVoiceLyrics \BBGBZxDZCMusicLyrics
            \context Voice = BFVoiceRH \BBGBZxDZCMusicRH
        >>
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
            \context Voice = BFVoiceLH \BBGBZxDZCMusicLH
        >>
        \context Lyrics = BFLyricsA \lyricsto BFVoiceLyrics \BFVerseA
        \context Lyrics = BFLyricsAAlt \lyricsto BFVoiceLyrics \BFVerseAAlt
        \context Lyrics = BFLyricsB \lyricsto BFVoiceLyrics \BFVerseB
        \context Lyrics = BFLyricsBAlt \lyricsto BFVoiceLyrics \BFVerseBAlt
        \context Lyrics = BFLyricsC \lyricsto BFVoiceLyrics \BFVerseC
        \context Lyrics = BFLyricsCAlt \lyricsto BFVoiceLyrics \BFVerseCAlt
        \context Lyrics = BFLyricsD \lyricsto BFVoiceLyrics \BFVerseD
        \context Lyrics = BFLyricsDAlt \lyricsto BFVoiceLyrics \BFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {27}
        \fontsize #6 \center-align \line {Die Heiland roep dringend}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {122}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BGStaffGroup <<
        \context Staff = BGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BGVoiceLyrics \BBGBAxABBMusicLyrics
            \context Voice = BGVoiceRH \BBGBAxABBMusicRH
        >>
        \new Lyrics  = BGLyricsA
        \new Lyrics = BGLyricsAAlt
        \new Lyrics  = BGLyricsB
        \new Lyrics = BGLyricsBAlt
        \new Lyrics  = BGLyricsC
        \new Lyrics = BGLyricsCAlt
        \context Staff = BGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BGVoiceLH \BBGBAxABBMusicLH
        >>
        \context Lyrics = BGLyricsA \lyricsto BGVoiceLyrics \BGVerseA
        \context Lyrics = BGLyricsAAlt \lyricsto BGVoiceLyrics \BGVerseAAlt
        \context Lyrics = BGLyricsB \lyricsto BGVoiceLyrics \BGVerseB
        \context Lyrics = BGLyricsBAlt \lyricsto BGVoiceLyrics \BGVerseBAlt
        \context Lyrics = BGLyricsC \lyricsto BGVoiceLyrics \BGVerseC
        \context Lyrics = BGLyricsCAlt \lyricsto BGVoiceLyrics \BGVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {28}
        \fontsize #6 \center-align \line {Die Heiland soek nog altyd}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {140}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BHStaffGroup <<
        \context Staff = BHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BHVoiceLyrics \BBGBBxADZMusicLyrics
            \context Voice = BHVoiceRH \BBGBBxADZMusicRH
        >>
        \new Lyrics  = BHLyricsA
        \new Lyrics = BHLyricsAAlt
        \new Lyrics  = BHLyricsB
        \new Lyrics = BHLyricsBAlt
        \new Lyrics  = BHLyricsC
        \new Lyrics = BHLyricsCAlt
        \new Lyrics  = BHLyricsD
        \new Lyrics = BHLyricsDAlt
        \context Staff = BHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BHVoiceLH \BBGBBxADZMusicLH
        >>
        \context Lyrics = BHLyricsA \lyricsto BHVoiceLyrics \BHVerseA
        \context Lyrics = BHLyricsAAlt \lyricsto BHVoiceLyrics \BHVerseAAlt
        \context Lyrics = BHLyricsB \lyricsto BHVoiceLyrics \BHVerseB
        \context Lyrics = BHLyricsBAlt \lyricsto BHVoiceLyrics \BHVerseBAlt
        \context Lyrics = BHLyricsC \lyricsto BHVoiceLyrics \BHVerseC
        \context Lyrics = BHLyricsCAlt \lyricsto BHVoiceLyrics \BHVerseCAlt
        \context Lyrics = BHLyricsD \lyricsto BHVoiceLyrics \BHVerseD
        \context Lyrics = BHLyricsDAlt \lyricsto BHVoiceLyrics \BHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {29}
        \fontsize #6 \center-align \line {Die Heil'ge Gees spreek}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {210}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BIStaffGroup <<
        \context Staff = BIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BIVoiceLyrics \BBGBCxBAZMusicLyrics
            \context Voice = BIVoiceRH \BBGBCxBAZMusicRH
        >>
        \new Lyrics  = BILyricsA
        \new Lyrics = BILyricsAAlt
        \new Lyrics  = BILyricsB
        \new Lyrics = BILyricsBAlt
        \new Lyrics  = BILyricsC
        \new Lyrics = BILyricsCAlt
        \context Staff = BIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BIVoiceLH \BBGBCxBAZMusicLH
        >>
        \context Lyrics = BILyricsA \lyricsto BIVoiceLyrics \BIVerseA
        \context Lyrics = BILyricsAAlt \lyricsto BIVoiceLyrics \BIVerseAAlt
        \context Lyrics = BILyricsB \lyricsto BIVoiceLyrics \BIVerseB
        \context Lyrics = BILyricsBAlt \lyricsto BIVoiceLyrics \BIVerseBAlt
        \context Lyrics = BILyricsC \lyricsto BIVoiceLyrics \BIVerseC
        \context Lyrics = BILyricsCAlt \lyricsto BIVoiceLyrics \BIVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {30}
        \fontsize #6 \center-align \line {Die Here is my Herder}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {308}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CZStaffGroup <<
        \context Staff = CZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CZVoiceLyrics \BBGBDxCZHAltMusicLyrics
            \context Voice = CZVoiceRH \BBGBDxCZHAltMusicRH
        >>
        \new Lyrics  = CZLyricsA
        \new Lyrics = CZLyricsAAlt
        \new Lyrics  = CZLyricsB
        \new Lyrics = CZLyricsBAlt
        \new Lyrics  = CZLyricsC
        \new Lyrics = CZLyricsCAlt
        \new Lyrics  = CZLyricsD
        \new Lyrics = CZLyricsDAlt
        \new Lyrics  = CZLyricsE
        \new Lyrics = CZLyricsEAlt
        \context Staff = CZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CZVoiceLH \BBGBDxCZHAltMusicLH
        >>
        \context Lyrics = CZLyricsA \lyricsto CZVoiceLyrics \CZVerseA
        \context Lyrics = CZLyricsAAlt \lyricsto CZVoiceLyrics \CZVerseAAlt
        \context Lyrics = CZLyricsB \lyricsto CZVoiceLyrics \CZVerseB
        \context Lyrics = CZLyricsBAlt \lyricsto CZVoiceLyrics \CZVerseBAlt
        \context Lyrics = CZLyricsC \lyricsto CZVoiceLyrics \CZVerseC
        \context Lyrics = CZLyricsCAlt \lyricsto CZVoiceLyrics \CZVerseCAlt
        \context Lyrics = CZLyricsD \lyricsto CZVoiceLyrics \CZVerseD
        \context Lyrics = CZLyricsDAlt \lyricsto CZVoiceLyrics \CZVerseDAlt
        \context Lyrics = CZLyricsE \lyricsto CZVoiceLyrics \CZVerseE
        \context Lyrics = CZLyricsEAlt \lyricsto CZVoiceLyrics \CZVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {31}
        \fontsize #6 \center-align \line {Die stem van die Herder}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {116}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CAStaffGroup <<
        \context Staff = CAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CAVoiceLyrics \BBGBExAAFMusicLyrics
            \context Voice = CAVoiceRH \BBGBExAAFMusicRH
        >>
        \new Lyrics  = CALyricsA
        \new Lyrics = CALyricsAAlt
        \new Lyrics  = CALyricsB
        \new Lyrics = CALyricsBAlt
        \new Lyrics  = CALyricsC
        \new Lyrics = CALyricsCAlt
        \context Staff = CAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CAVoiceLH \BBGBExAAFMusicLH
        >>
        \context Lyrics = CALyricsA \lyricsto CAVoiceLyrics \CAVerseA
        \context Lyrics = CALyricsAAlt \lyricsto CAVoiceLyrics \CAVerseAAlt
        \context Lyrics = CALyricsB \lyricsto CAVoiceLyrics \CAVerseB
        \context Lyrics = CALyricsBAlt \lyricsto CAVoiceLyrics \CAVerseBAlt
        \context Lyrics = CALyricsC \lyricsto CAVoiceLyrics \CAVerseC
        \context Lyrics = CALyricsCAlt \lyricsto CAVoiceLyrics \CAVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {32}
        \fontsize #6 \center-align \line {Die stem van Jesus roep}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {114}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CBStaffGroup <<
        \context Staff = CBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CBVoiceLyrics \BBGBFxAADMusicLyrics
            \context Voice = CBVoiceRH \BBGBFxAADMusicRH
        >>
        \new Lyrics  = CBLyricsA
        \new Lyrics = CBLyricsAAlt
        \new Lyrics  = CBLyricsB
        \new Lyrics = CBLyricsBAlt
        \new Lyrics  = CBLyricsC
        \new Lyrics = CBLyricsCAlt
        \new Lyrics  = CBLyricsD
        \new Lyrics = CBLyricsDAlt
        \context Staff = CBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CBVoiceLH \BBGBFxAADMusicLH
        >>
        \context Lyrics = CBLyricsA \lyricsto CBVoiceLyrics \CBVerseA
        \context Lyrics = CBLyricsAAlt \lyricsto CBVoiceLyrics \CBVerseAAlt
        \context Lyrics = CBLyricsB \lyricsto CBVoiceLyrics \CBVerseB
        \context Lyrics = CBLyricsBAlt \lyricsto CBVoiceLyrics \CBVerseBAlt
        \context Lyrics = CBLyricsC \lyricsto CBVoiceLyrics \CBVerseC
        \context Lyrics = CBLyricsCAlt \lyricsto CBVoiceLyrics \CBVerseCAlt
        \context Lyrics = CBLyricsD \lyricsto CBVoiceLyrics \CBVerseD
        \context Lyrics = CBLyricsDAlt \lyricsto CBVoiceLyrics \CBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {33}
        \fontsize #6 \center-align \line {Die tere Herderstem}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {145}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CCStaffGroup <<
        \context Staff = CCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CCVoiceLyrics \BBGBGxADEMusicLyrics
            \context Voice = CCVoiceRH \BBGBGxADEMusicRH
        >>
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
            \context Voice = CCVoiceLH \BBGBGxADEMusicLH
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
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {34}
        \fontsize #6 \center-align \line {Die wêreld het ek oorwin}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {360}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CDStaffGroup <<
        \context Staff = CDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CDVoiceLyrics \BBGBHxCFZAfrMusicLyrics
            \context Voice = CDVoiceRH \BBGBHxCFZAfrMusicRH
        >>
        \new Lyrics  = CDLyricsA
        \new Lyrics = CDLyricsAAlt
        \new Lyrics  = CDLyricsB
        \new Lyrics = CDLyricsBAlt
        \new Lyrics  = CDLyricsC
        \new Lyrics = CDLyricsCAlt
        \new Lyrics  = CDLyricsD
        \new Lyrics = CDLyricsDAlt
        \context Staff = CDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CDVoiceLH \BBGBHxCFZAfrMusicLH
        >>
        \context Lyrics = CDLyricsA \lyricsto CDVoiceLyrics \CDVerseA
        \context Lyrics = CDLyricsAAlt \lyricsto CDVoiceLyrics \CDVerseAAlt
        \context Lyrics = CDLyricsB \lyricsto CDVoiceLyrics \CDVerseB
        \context Lyrics = CDLyricsBAlt \lyricsto CDVoiceLyrics \CDVerseBAlt
        \context Lyrics = CDLyricsC \lyricsto CDVoiceLyrics \CDVerseC
        \context Lyrics = CDLyricsCAlt \lyricsto CDVoiceLyrics \CDVerseCAlt
        \context Lyrics = CDLyricsD \lyricsto CDVoiceLyrics \CDVerseD
        \context Lyrics = CDLyricsDAlt \lyricsto CDVoiceLyrics \CDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {35}
        \fontsize #6 \center-align \line {Die wil van God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {263}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CEStaffGroup <<
        \context Staff = CEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CEVoiceLyrics \BBGBIxBFCMusicLyrics
            \context Voice = CEVoiceRH \BBGBIxBFCMusicRH
        >>
        \new Lyrics  = CELyricsA
        \new Lyrics = CELyricsAAlt
        \new Lyrics  = CELyricsB
        \new Lyrics = CELyricsBAlt
        \new Lyrics  = CELyricsC
        \new Lyrics = CELyricsCAlt
        \new Lyrics  = CELyricsD
        \new Lyrics = CELyricsDAlt
        \new Lyrics  = CELyricsE
        \new Lyrics = CELyricsEAlt
        \context Staff = CEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CEVoiceLH \BBGBIxBFCMusicLH
        >>
        \context Lyrics = CELyricsA \lyricsto CEVoiceLyrics \CEVerseA
        \context Lyrics = CELyricsAAlt \lyricsto CEVoiceLyrics \CEVerseAAlt
        \context Lyrics = CELyricsB \lyricsto CEVoiceLyrics \CEVerseB
        \context Lyrics = CELyricsBAlt \lyricsto CEVoiceLyrics \CEVerseBAlt
        \context Lyrics = CELyricsC \lyricsto CEVoiceLyrics \CEVerseC
        \context Lyrics = CELyricsCAlt \lyricsto CEVoiceLyrics \CEVerseCAlt
        \context Lyrics = CELyricsD \lyricsto CEVoiceLyrics \CEVerseD
        \context Lyrics = CELyricsDAlt \lyricsto CEVoiceLyrics \CEVerseDAlt
        \context Lyrics = CELyricsE \lyricsto CEVoiceLyrics \CEVerseE
        \context Lyrics = CELyricsEAlt \lyricsto CEVoiceLyrics \CEVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {36}
        \fontsize #6 \center-align \line {Dierb're Jesus U te ken}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {9}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CFStaffGroup <<
        \context Staff = CFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CFVoiceLyrics \BBGCZxINoChoMusicLyrics
            \context Voice = CFVoiceRH \BBGCZxINoChoMusicRH
        >>
        \new Lyrics  = CFLyricsA
        \new Lyrics = CFLyricsAAlt
        \new Lyrics  = CFLyricsB
        \new Lyrics = CFLyricsBAlt
        \new Lyrics  = CFLyricsC
        \new Lyrics = CFLyricsCAlt
        \context Staff = CFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = CFVoiceLH \BBGCZxINoChoMusicLH
        >>
        \context Lyrics = CFLyricsA \lyricsto CFVoiceLyrics \CFVerseA
        \context Lyrics = CFLyricsAAlt \lyricsto CFVoiceLyrics \CFVerseAAlt
        \context Lyrics = CFLyricsB \lyricsto CFVoiceLyrics \CFVerseB
        \context Lyrics = CFLyricsBAlt \lyricsto CFVoiceLyrics \CFVerseBAlt
        \context Lyrics = CFLyricsC \lyricsto CFVoiceLyrics \CFVerseC
        \context Lyrics = CFLyricsCAlt \lyricsto CFVoiceLyrics \CFVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {37}
        \fontsize #6 \center-align \line {Dierb're Verlosser}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {206}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CGStaffGroup <<
        \context Staff = CGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CGVoiceLyrics \BBGCAxBZFMusicLyrics
            \context Voice = CGVoiceRH \BBGCAxBZFMusicRH
        >>
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
            \context Voice = CGVoiceLH \BBGCAxBZFMusicLH
        >>
        \context Lyrics = CGLyricsA \lyricsto CGVoiceLyrics \CGVerseA
        \context Lyrics = CGLyricsAAlt \lyricsto CGVoiceLyrics \CGVerseAAlt
        \context Lyrics = CGLyricsB \lyricsto CGVoiceLyrics \CGVerseB
        \context Lyrics = CGLyricsBAlt \lyricsto CGVoiceLyrics \CGVerseBAlt
        \context Lyrics = CGLyricsC \lyricsto CGVoiceLyrics \CGVerseC
        \context Lyrics = CGLyricsCAlt \lyricsto CGVoiceLyrics \CGVerseCAlt
        \context Lyrics = CGLyricsD \lyricsto CGVoiceLyrics \CGVerseD
        \context Lyrics = CGLyricsDAlt \lyricsto CGVoiceLyrics \CGVerseDAlt
        \context Lyrics = CGLyricsE \lyricsto CGVoiceLyrics \CGVerseE
        \context Lyrics = CGLyricsEAlt \lyricsto CGVoiceLyrics \CGVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {38}
        \fontsize #6 \center-align \line {Dis nie vergeefs}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {319}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CHStaffGroup <<
        \context Staff = CHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CHVoiceLyrics \BBGCBxCAIMusicLyrics
            \context Voice = CHVoiceRH \BBGCBxCAIMusicRH
        >>
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
            \context Voice = CHVoiceLH \BBGCBxCAIMusicLH
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
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {39}
        \fontsize #6 \center-align \line {Dis U genade, Lam van God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {199}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = CIStaffGroup <<
        \context Staff = CIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = CIVoiceLyrics \BBGCCxAIIMusicLyrics
            \context Voice = CIVoiceRH \BBGCCxAIIMusicRH
        >>
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
            \context Voice = CIVoiceLH \BBGCCxAIIMusicLH
        >>
        \context Lyrics = CILyricsA \lyricsto CIVoiceLyrics \CIVerseA
        \context Lyrics = CILyricsAAlt \lyricsto CIVoiceLyrics \CIVerseAAlt
        \context Lyrics = CILyricsB \lyricsto CIVoiceLyrics \CIVerseB
        \context Lyrics = CILyricsBAlt \lyricsto CIVoiceLyrics \CIVerseBAlt
        \context Lyrics = CILyricsC \lyricsto CIVoiceLyrics \CIVerseC
        \context Lyrics = CILyricsCAlt \lyricsto CIVoiceLyrics \CIVerseCAlt
        \context Lyrics = CILyricsD \lyricsto CIVoiceLyrics \CIVerseD
        \context Lyrics = CILyricsDAlt \lyricsto CIVoiceLyrics \CIVerseDAlt
        \context Lyrics = CILyricsE \lyricsto CIVoiceLyrics \CIVerseE
        \context Lyrics = CILyricsEAlt \lyricsto CIVoiceLyrics \CIVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {40}
        \fontsize #6 \center-align \line {Doen net U wil, Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {58}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DZStaffGroup <<
        \context Staff = DZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DZVoiceLyrics \BBGCDxEGMusicLyrics
            \context Voice = DZVoiceRH \BBGCDxEGMusicRH
        >>
        \new Lyrics  = DZLyricsA
        \new Lyrics = DZLyricsAAlt
        \new Lyrics  = DZLyricsB
        \new Lyrics = DZLyricsBAlt
        \new Lyrics  = DZLyricsC
        \new Lyrics = DZLyricsCAlt
        \new Lyrics  = DZLyricsD
        \new Lyrics = DZLyricsDAlt
        \context Staff = DZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DZVoiceLH \BBGCDxEGMusicLH
        >>
        \context Lyrics = DZLyricsA \lyricsto DZVoiceLyrics \DZVerseA
        \context Lyrics = DZLyricsAAlt \lyricsto DZVoiceLyrics \DZVerseAAlt
        \context Lyrics = DZLyricsB \lyricsto DZVoiceLyrics \DZVerseB
        \context Lyrics = DZLyricsBAlt \lyricsto DZVoiceLyrics \DZVerseBAlt
        \context Lyrics = DZLyricsC \lyricsto DZVoiceLyrics \DZVerseC
        \context Lyrics = DZLyricsCAlt \lyricsto DZVoiceLyrics \DZVerseCAlt
        \context Lyrics = DZLyricsD \lyricsto DZVoiceLyrics \DZVerseD
        \context Lyrics = DZLyricsDAlt \lyricsto DZVoiceLyrics \DZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {41}
        \fontsize #6 \center-align \line {Donker is dit om my heen}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {194}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DAStaffGroup <<
        \context Staff = DAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DAVoiceLyrics \BBGCExAIDMusicLyrics
            \context Voice = DAVoiceRH \BBGCExAIDMusicRH
        >>
        \new Lyrics  = DALyricsA
        \new Lyrics = DALyricsAAlt
        \new Lyrics  = DALyricsB
        \new Lyrics = DALyricsBAlt
        \new Lyrics  = DALyricsC
        \new Lyrics = DALyricsCAlt
        \context Staff = DAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DAVoiceLH \BBGCExAIDMusicLH
        >>
        \context Lyrics = DALyricsA \lyricsto DAVoiceLyrics \DAVerseA
        \context Lyrics = DALyricsAAlt \lyricsto DAVoiceLyrics \DAVerseAAlt
        \context Lyrics = DALyricsB \lyricsto DAVoiceLyrics \DAVerseB
        \context Lyrics = DALyricsBAlt \lyricsto DAVoiceLyrics \DAVerseBAlt
        \context Lyrics = DALyricsC \lyricsto DAVoiceLyrics \DAVerseC
        \context Lyrics = DALyricsCAlt \lyricsto DAVoiceLyrics \DAVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {42}
        \fontsize #6 \center-align \line {Dood in sonde, ver van God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {71}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DBStaffGroup <<
        \context Staff = DBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DBVoiceLyrics \BBGCFxGAMusicLyrics
            \context Voice = DBVoiceRH \BBGCFxGAMusicRH
        >>
        \new Lyrics  = DBLyricsA
        \new Lyrics = DBLyricsAAlt
        \new Lyrics  = DBLyricsB
        \new Lyrics = DBLyricsBAlt
        \new Lyrics  = DBLyricsC
        \new Lyrics = DBLyricsCAlt
        \new Lyrics  = DBLyricsD
        \new Lyrics = DBLyricsDAlt
        \context Staff = DBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DBVoiceLH \BBGCFxGAMusicLH
        >>
        \context Lyrics = DBLyricsA \lyricsto DBVoiceLyrics \DBVerseA
        \context Lyrics = DBLyricsAAlt \lyricsto DBVoiceLyrics \DBVerseAAlt
        \context Lyrics = DBLyricsB \lyricsto DBVoiceLyrics \DBVerseB
        \context Lyrics = DBLyricsBAlt \lyricsto DBVoiceLyrics \DBVerseBAlt
        \context Lyrics = DBLyricsC \lyricsto DBVoiceLyrics \DBVerseC
        \context Lyrics = DBLyricsCAlt \lyricsto DBVoiceLyrics \DBVerseCAlt
        \context Lyrics = DBLyricsD \lyricsto DBVoiceLyrics \DBVerseD
        \context Lyrics = DBLyricsDAlt \lyricsto DBVoiceLyrics \DBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {43}
        \fontsize #6 \center-align \line {Een ding begeer ek}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {358}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DCStaffGroup <<
        \context Staff = DCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DCVoiceLyrics \BBGCGxCEHMusicLyrics
            \context Voice = DCVoiceRH \BBGCGxCEHMusicRH
        >>
        \new Lyrics  = DCLyricsA
        \new Lyrics = DCLyricsAAlt
        \new Lyrics  = DCLyricsB
        \new Lyrics = DCLyricsBAlt
        \new Lyrics  = DCLyricsC
        \new Lyrics = DCLyricsCAlt
        \context Staff = DCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DCVoiceLH \BBGCGxCEHMusicLH
        >>
        \context Lyrics = DCLyricsA \lyricsto DCVoiceLyrics \DCVerseA
        \context Lyrics = DCLyricsAAlt \lyricsto DCVoiceLyrics \DCVerseAAlt
        \context Lyrics = DCLyricsB \lyricsto DCVoiceLyrics \DCVerseB
        \context Lyrics = DCLyricsBAlt \lyricsto DCVoiceLyrics \DCVerseBAlt
        \context Lyrics = DCLyricsC \lyricsto DCVoiceLyrics \DCVerseC
        \context Lyrics = DCLyricsCAlt \lyricsto DCVoiceLyrics \DCVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {44}
        \fontsize #6 \center-align \line {Een lewe hier}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {101}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DDStaffGroup <<
        \context Staff = DDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DDVoiceLyrics \BBGCHxAZAMusicLyrics
            \context Voice = DDVoiceRH \BBGCHxAZAMusicRH
        >>
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
            \context Voice = DDVoiceLH \BBGCHxAZAMusicLH
        >>
        \context Lyrics = DDLyricsA \lyricsto DDVoiceLyrics \DDVerseA
        \context Lyrics = DDLyricsAAlt \lyricsto DDVoiceLyrics \DDVerseAAlt
        \context Lyrics = DDLyricsB \lyricsto DDVoiceLyrics \DDVerseB
        \context Lyrics = DDLyricsBAlt \lyricsto DDVoiceLyrics \DDVerseBAlt
        \context Lyrics = DDLyricsC \lyricsto DDVoiceLyrics \DDVerseC
        \context Lyrics = DDLyricsCAlt \lyricsto DDVoiceLyrics \DDVerseCAlt
        \context Lyrics = DDLyricsD \lyricsto DDVoiceLyrics \DDVerseD
        \context Lyrics = DDLyricsDAlt \lyricsto DDVoiceLyrics \DDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {45}
        \fontsize #6 \center-align \line {Eens was ons ver van God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {347}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DEStaffGroup <<
        \context Staff = DEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DEVoiceLyrics \BBGCIxCDGMusicLyrics
            \context Voice = DEVoiceRH \BBGCIxCDGMusicRH
        >>
        \new Lyrics  = DELyricsA
        \new Lyrics = DELyricsAAlt
        \new Lyrics  = DELyricsB
        \new Lyrics = DELyricsBAlt
        \new Lyrics  = DELyricsC
        \new Lyrics = DELyricsCAlt
        \new Lyrics  = DELyricsD
        \new Lyrics = DELyricsDAlt
        \context Staff = DEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DEVoiceLH \BBGCIxCDGMusicLH
        >>
        \context Lyrics = DELyricsA \lyricsto DEVoiceLyrics \DEVerseA
        \context Lyrics = DELyricsAAlt \lyricsto DEVoiceLyrics \DEVerseAAlt
        \context Lyrics = DELyricsB \lyricsto DEVoiceLyrics \DEVerseB
        \context Lyrics = DELyricsBAlt \lyricsto DEVoiceLyrics \DEVerseBAlt
        \context Lyrics = DELyricsC \lyricsto DEVoiceLyrics \DEVerseC
        \context Lyrics = DELyricsCAlt \lyricsto DEVoiceLyrics \DEVerseCAlt
        \context Lyrics = DELyricsD \lyricsto DEVoiceLyrics \DEVerseD
        \context Lyrics = DELyricsDAlt \lyricsto DEVoiceLyrics \DEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {46}
        \fontsize #6 \center-align \line {Ek besit 'n vriend wat help}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {75}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DFStaffGroup <<
        \context Staff = DFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DFVoiceLyrics \BBGDZxGEMusicLyrics
            \context Voice = DFVoiceRH \BBGDZxGEMusicRH
        >>
        \new Lyrics  = DFLyricsA
        \new Lyrics = DFLyricsAAlt
        \new Lyrics  = DFLyricsB
        \new Lyrics = DFLyricsBAlt
        \new Lyrics  = DFLyricsC
        \new Lyrics = DFLyricsCAlt
        \context Staff = DFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DFVoiceLH \BBGDZxGEMusicLH
        >>
        \context Lyrics = DFLyricsA \lyricsto DFVoiceLyrics \DFVerseA
        \context Lyrics = DFLyricsAAlt \lyricsto DFVoiceLyrics \DFVerseAAlt
        \context Lyrics = DFLyricsB \lyricsto DFVoiceLyrics \DFVerseB
        \context Lyrics = DFLyricsBAlt \lyricsto DFVoiceLyrics \DFVerseBAlt
        \context Lyrics = DFLyricsC \lyricsto DFVoiceLyrics \DFVerseC
        \context Lyrics = DFLyricsCAlt \lyricsto DFVoiceLyrics \DFVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {47}
        \fontsize #6 \center-align \line {Ek het Jesus altyd nodig}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {85}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DGStaffGroup <<
        \context Staff = DGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DGVoiceLyrics \BBGDAxHEMusicLyrics
            \context Voice = DGVoiceRH \BBGDAxHEMusicRH
        >>
        \new Lyrics  = DGLyricsA
        \new Lyrics = DGLyricsAAlt
        \new Lyrics  = DGLyricsB
        \new Lyrics = DGLyricsBAlt
        \new Lyrics  = DGLyricsC
        \new Lyrics = DGLyricsCAlt
        \new Lyrics  = DGLyricsD
        \new Lyrics = DGLyricsDAlt
        \context Staff = DGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DGVoiceLH \BBGDAxHEMusicLH
        >>
        \context Lyrics = DGLyricsA \lyricsto DGVoiceLyrics \DGVerseA
        \context Lyrics = DGLyricsAAlt \lyricsto DGVoiceLyrics \DGVerseAAlt
        \context Lyrics = DGLyricsB \lyricsto DGVoiceLyrics \DGVerseB
        \context Lyrics = DGLyricsBAlt \lyricsto DGVoiceLyrics \DGVerseBAlt
        \context Lyrics = DGLyricsC \lyricsto DGVoiceLyrics \DGVerseC
        \context Lyrics = DGLyricsCAlt \lyricsto DGVoiceLyrics \DGVerseCAlt
        \context Lyrics = DGLyricsD \lyricsto DGVoiceLyrics \DGVerseD
        \context Lyrics = DGLyricsDAlt \lyricsto DGVoiceLyrics \DGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {48}
        \fontsize #6 \center-align \line {Ek het U nodig hier}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {124}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DHStaffGroup <<
        \context Staff = DHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DHVoiceLyrics \BBGDBxABDMoreSylBMusicLyrics
            \context Voice = DHVoiceRH \BBGDBxABDMoreSylBMusicRH
        >>
        \new Lyrics  = DHLyricsA
        \new Lyrics = DHLyricsAAlt
        \new Lyrics  = DHLyricsB
        \new Lyrics = DHLyricsBAlt
        \new Lyrics  = DHLyricsC
        \new Lyrics = DHLyricsCAlt
        \new Lyrics  = DHLyricsD
        \new Lyrics = DHLyricsDAlt
        \new Lyrics  = DHLyricsE
        \new Lyrics = DHLyricsEAlt
        \context Staff = DHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DHVoiceLH \BBGDBxABDMoreSylBMusicLH
        >>
        \context Lyrics = DHLyricsA \lyricsto DHVoiceLyrics \DHVerseA
        \context Lyrics = DHLyricsAAlt \lyricsto DHVoiceLyrics \DHVerseAAlt
        \context Lyrics = DHLyricsB \lyricsto DHVoiceLyrics \DHVerseB
        \context Lyrics = DHLyricsBAlt \lyricsto DHVoiceLyrics \DHVerseBAlt
        \context Lyrics = DHLyricsC \lyricsto DHVoiceLyrics \DHVerseC
        \context Lyrics = DHLyricsCAlt \lyricsto DHVoiceLyrics \DHVerseCAlt
        \context Lyrics = DHLyricsD \lyricsto DHVoiceLyrics \DHVerseD
        \context Lyrics = DHLyricsDAlt \lyricsto DHVoiceLyrics \DHVerseDAlt
        \context Lyrics = DHLyricsE \lyricsto DHVoiceLyrics \DHVerseE
        \context Lyrics = DHLyricsEAlt \lyricsto DHVoiceLyrics \DHVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {49}
        \fontsize #6 \center-align \line {Ek hoor my sterwend'}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {82}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = DIStaffGroup <<
        \context Staff = DIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = DIVoiceLyrics \BBGDCxHBMusicLyrics
            \context Voice = DIVoiceRH \BBGDCxHBMusicRH
        >>
        \new Lyrics  = DILyricsA
        \new Lyrics = DILyricsAAlt
        \new Lyrics  = DILyricsB
        \new Lyrics = DILyricsBAlt
        \new Lyrics  = DILyricsC
        \new Lyrics = DILyricsCAlt
        \context Staff = DIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = DIVoiceLH \BBGDCxHBMusicLH
        >>
        \context Lyrics = DILyricsA \lyricsto DIVoiceLyrics \DIVerseA
        \context Lyrics = DILyricsAAlt \lyricsto DIVoiceLyrics \DIVerseAAlt
        \context Lyrics = DILyricsB \lyricsto DIVoiceLyrics \DIVerseB
        \context Lyrics = DILyricsBAlt \lyricsto DIVoiceLyrics \DIVerseBAlt
        \context Lyrics = DILyricsC \lyricsto DIVoiceLyrics \DIVerseC
        \context Lyrics = DILyricsCAlt \lyricsto DIVoiceLyrics \DIVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {50}
        \fontsize #6 \center-align \line {Ek hoor sy stem}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {250}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EZStaffGroup <<
        \context Staff = EZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EZVoiceLyrics \BBGDDxBEZMusicLyrics
            \context Voice = EZVoiceRH \BBGDDxBEZMusicRH
        >>
        \new Lyrics  = EZLyricsA
        \new Lyrics = EZLyricsAAlt
        \new Lyrics  = EZLyricsB
        \new Lyrics = EZLyricsBAlt
        \new Lyrics  = EZLyricsC
        \new Lyrics = EZLyricsCAlt
        \new Lyrics  = EZLyricsD
        \new Lyrics = EZLyricsDAlt
        \context Staff = EZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EZVoiceLH \BBGDDxBEZMusicLH
        >>
        \context Lyrics = EZLyricsA \lyricsto EZVoiceLyrics \EZVerseA
        \context Lyrics = EZLyricsAAlt \lyricsto EZVoiceLyrics \EZVerseAAlt
        \context Lyrics = EZLyricsB \lyricsto EZVoiceLyrics \EZVerseB
        \context Lyrics = EZLyricsBAlt \lyricsto EZVoiceLyrics \EZVerseBAlt
        \context Lyrics = EZLyricsC \lyricsto EZVoiceLyrics \EZVerseC
        \context Lyrics = EZLyricsCAlt \lyricsto EZVoiceLyrics \EZVerseCAlt
        \context Lyrics = EZLyricsD \lyricsto EZVoiceLyrics \EZVerseD
        \context Lyrics = EZLyricsDAlt \lyricsto EZVoiceLyrics \EZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {51}
        \fontsize #6 \center-align \line {Ek is nou 'n kind van God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {393}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EAStaffGroup <<
        \context Staff = EAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EAVoiceLyrics \BBGDExCICMusicLyrics
            \context Voice = EAVoiceRH \BBGDExCICMusicRH
        >>
        \new Lyrics  = EALyricsA
        \new Lyrics = EALyricsAAlt
        \new Lyrics  = EALyricsB
        \new Lyrics = EALyricsBAlt
        \new Lyrics  = EALyricsC
        \new Lyrics = EALyricsCAlt
        \new Lyrics  = EALyricsD
        \new Lyrics = EALyricsDAlt
        \new Lyrics  = EALyricsE
        \new Lyrics = EALyricsEAlt
        \context Staff = EAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EAVoiceLH \BBGDExCICMusicLH
        >>
        \context Lyrics = EALyricsA \lyricsto EAVoiceLyrics \EAVerseA
        \context Lyrics = EALyricsAAlt \lyricsto EAVoiceLyrics \EAVerseAAlt
        \context Lyrics = EALyricsB \lyricsto EAVoiceLyrics \EAVerseB
        \context Lyrics = EALyricsBAlt \lyricsto EAVoiceLyrics \EAVerseBAlt
        \context Lyrics = EALyricsC \lyricsto EAVoiceLyrics \EAVerseC
        \context Lyrics = EALyricsCAlt \lyricsto EAVoiceLyrics \EAVerseCAlt
        \context Lyrics = EALyricsD \lyricsto EAVoiceLyrics \EAVerseD
        \context Lyrics = EALyricsDAlt \lyricsto EAVoiceLyrics \EAVerseDAlt
        \context Lyrics = EALyricsE \lyricsto EAVoiceLyrics \EAVerseE
        \context Lyrics = EALyricsEAlt \lyricsto EAVoiceLyrics \EAVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {52}
        \fontsize #6 \center-align \line {Ek is tevrede in my Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {253}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EBStaffGroup <<
        \context Staff = EBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EBVoiceLyrics \BBGDFxBECMusicLyrics
            \context Voice = EBVoiceRH \BBGDFxBECMusicRH
        >>
        \new Lyrics  = EBLyricsA
        \new Lyrics = EBLyricsAAlt
        \new Lyrics  = EBLyricsB
        \new Lyrics = EBLyricsBAlt
        \new Lyrics  = EBLyricsC
        \new Lyrics = EBLyricsCAlt
        \context Staff = EBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EBVoiceLH \BBGDFxBECMusicLH
        >>
        \context Lyrics = EBLyricsA \lyricsto EBVoiceLyrics \EBVerseA
        \context Lyrics = EBLyricsAAlt \lyricsto EBVoiceLyrics \EBVerseAAlt
        \context Lyrics = EBLyricsB \lyricsto EBVoiceLyrics \EBVerseB
        \context Lyrics = EBLyricsBAlt \lyricsto EBVoiceLyrics \EBVerseBAlt
        \context Lyrics = EBLyricsC \lyricsto EBVoiceLyrics \EBVerseC
        \context Lyrics = EBLyricsCAlt \lyricsto EBVoiceLyrics \EBVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {53}
        \fontsize #6 \center-align \line {Ek kan nie verder sien}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {277}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ECStaffGroup <<
        \context Staff = ECStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ECVoiceLyrics \BBGDGxBGGMusicLyrics
            \context Voice = ECVoiceRH \BBGDGxBGGMusicRH
        >>
        \new Lyrics  = ECLyricsA
        \new Lyrics = ECLyricsAAlt
        \new Lyrics  = ECLyricsB
        \new Lyrics = ECLyricsBAlt
        \new Lyrics  = ECLyricsC
        \new Lyrics = ECLyricsCAlt
        \new Lyrics  = ECLyricsD
        \new Lyrics = ECLyricsDAlt
        \context Staff = ECStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ECVoiceLH \BBGDGxBGGMusicLH
        >>
        \context Lyrics = ECLyricsA \lyricsto ECVoiceLyrics \ECVerseA
        \context Lyrics = ECLyricsAAlt \lyricsto ECVoiceLyrics \ECVerseAAlt
        \context Lyrics = ECLyricsB \lyricsto ECVoiceLyrics \ECVerseB
        \context Lyrics = ECLyricsBAlt \lyricsto ECVoiceLyrics \ECVerseBAlt
        \context Lyrics = ECLyricsC \lyricsto ECVoiceLyrics \ECVerseC
        \context Lyrics = ECLyricsCAlt \lyricsto ECVoiceLyrics \ECVerseCAlt
        \context Lyrics = ECLyricsD \lyricsto ECVoiceLyrics \ECVerseD
        \context Lyrics = ECLyricsDAlt \lyricsto ECVoiceLyrics \ECVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {54}
        \fontsize #6 \center-align \line {Ek sou die lewe nooit}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {64}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EDStaffGroup <<
        \context Staff = EDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EDVoiceLyrics \BBGDHxFDMusicLyrics
            \context Voice = EDVoiceRH \BBGDHxFDMusicRH
        >>
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
            \context Voice = EDVoiceLH \BBGDHxFDMusicLH
        >>
        \context Lyrics = EDLyricsA \lyricsto EDVoiceLyrics \EDVerseA
        \context Lyrics = EDLyricsAAlt \lyricsto EDVoiceLyrics \EDVerseAAlt
        \context Lyrics = EDLyricsB \lyricsto EDVoiceLyrics \EDVerseB
        \context Lyrics = EDLyricsBAlt \lyricsto EDVoiceLyrics \EDVerseBAlt
        \context Lyrics = EDLyricsC \lyricsto EDVoiceLyrics \EDVerseC
        \context Lyrics = EDLyricsCAlt \lyricsto EDVoiceLyrics \EDVerseCAlt
        \context Lyrics = EDLyricsD \lyricsto EDVoiceLyrics \EDVerseD
        \context Lyrics = EDLyricsDAlt \lyricsto EDVoiceLyrics \EDVerseDAlt
        \context Lyrics = EDLyricsE \lyricsto EDVoiceLyrics \EDVerseE
        \context Lyrics = EDLyricsEAlt \lyricsto EDVoiceLyrics \EDVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {55}
        \fontsize #6 \center-align \line {Ek weet dat my Verlosser}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {274}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EEStaffGroup <<
        \context Staff = EEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EEVoiceLyrics \BBGDIxBGDMusicLyrics
            \context Voice = EEVoiceRH \BBGDIxBGDMusicRH
        >>
        \new Lyrics  = EELyricsA
        \new Lyrics = EELyricsAAlt
        \new Lyrics  = EELyricsB
        \new Lyrics = EELyricsBAlt
        \new Lyrics  = EELyricsC
        \new Lyrics = EELyricsCAlt
        \new Lyrics  = EELyricsD
        \new Lyrics = EELyricsDAlt
        \context Staff = EEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EEVoiceLH \BBGDIxBGDMusicLH
        >>
        \context Lyrics = EELyricsA \lyricsto EEVoiceLyrics \EEVerseA
        \context Lyrics = EELyricsAAlt \lyricsto EEVoiceLyrics \EEVerseAAlt
        \context Lyrics = EELyricsB \lyricsto EEVoiceLyrics \EEVerseB
        \context Lyrics = EELyricsBAlt \lyricsto EEVoiceLyrics \EEVerseBAlt
        \context Lyrics = EELyricsC \lyricsto EEVoiceLyrics \EEVerseC
        \context Lyrics = EELyricsCAlt \lyricsto EEVoiceLyrics \EEVerseCAlt
        \context Lyrics = EELyricsD \lyricsto EEVoiceLyrics \EEVerseD
        \context Lyrics = EELyricsDAlt \lyricsto EEVoiceLyrics \EEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {56}
        \fontsize #6 \center-align \line {Ek wil U beter ken Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {362}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EFStaffGroup <<
        \context Staff = EFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EFVoiceLyrics \BBGEZxCFBMusicLyrics
            \context Voice = EFVoiceRH \BBGEZxCFBMusicRH
        >>
        \new Lyrics  = EFLyricsA
        \new Lyrics = EFLyricsAAlt
        \new Lyrics  = EFLyricsB
        \new Lyrics = EFLyricsBAlt
        \new Lyrics  = EFLyricsC
        \new Lyrics = EFLyricsCAlt
        \new Lyrics  = EFLyricsD
        \new Lyrics = EFLyricsDAlt
        \context Staff = EFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EFVoiceLH \BBGEZxCFBMusicLH
        >>
        \context Lyrics = EFLyricsA \lyricsto EFVoiceLyrics \EFVerseA
        \context Lyrics = EFLyricsAAlt \lyricsto EFVoiceLyrics \EFVerseAAlt
        \context Lyrics = EFLyricsB \lyricsto EFVoiceLyrics \EFVerseB
        \context Lyrics = EFLyricsBAlt \lyricsto EFVoiceLyrics \EFVerseBAlt
        \context Lyrics = EFLyricsC \lyricsto EFVoiceLyrics \EFVerseC
        \context Lyrics = EFLyricsCAlt \lyricsto EFVoiceLyrics \EFVerseCAlt
        \context Lyrics = EFLyricsD \lyricsto EFVoiceLyrics \EFVerseD
        \context Lyrics = EFLyricsDAlt \lyricsto EFVoiceLyrics \EFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {57}
        \fontsize #6 \center-align \line {Gaan arbei voort}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {330}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EGStaffGroup <<
        \context Staff = EGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EGVoiceLyrics \BBGEAxCCZMoreSylMusicLyrics
            \context Voice = EGVoiceRH \BBGEAxCCZMoreSylMusicRH
        >>
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
            \context Voice = EGVoiceLH \BBGEAxCCZMoreSylMusicLH
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
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {58}
        \fontsize #6 \center-align \line {Gaan geduldig voorwaarts}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {262}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EHStaffGroup <<
        \context Staff = EHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EHVoiceLyrics \BBGEBxBFBMusicLyrics
            \context Voice = EHVoiceRH \BBGEBxBFBMusicRH
        >>
        \new Lyrics  = EHLyricsA
        \new Lyrics = EHLyricsAAlt
        \new Lyrics  = EHLyricsB
        \new Lyrics = EHLyricsBAlt
        \new Lyrics  = EHLyricsC
        \new Lyrics = EHLyricsCAlt
        \new Lyrics  = EHLyricsD
        \new Lyrics = EHLyricsDAlt
        \context Staff = EHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EHVoiceLH \BBGEBxBFBMusicLH
        >>
        \context Lyrics = EHLyricsA \lyricsto EHVoiceLyrics \EHVerseA
        \context Lyrics = EHLyricsAAlt \lyricsto EHVoiceLyrics \EHVerseAAlt
        \context Lyrics = EHLyricsB \lyricsto EHVoiceLyrics \EHVerseB
        \context Lyrics = EHLyricsBAlt \lyricsto EHVoiceLyrics \EHVerseBAlt
        \context Lyrics = EHLyricsC \lyricsto EHVoiceLyrics \EHVerseC
        \context Lyrics = EHLyricsCAlt \lyricsto EHVoiceLyrics \EHVerseCAlt
        \context Lyrics = EHLyricsD \lyricsto EHVoiceLyrics \EHVerseD
        \context Lyrics = EHLyricsDAlt \lyricsto EHVoiceLyrics \EHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {59}
        \fontsize #6 \center-align \line {Gebed is steeds 'n bron}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {186}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = EIStaffGroup <<
        \context Staff = EIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = EIVoiceLyrics \BBGECxAHFMusicLyrics
            \context Voice = EIVoiceRH \BBGECxAHFMusicRH
        >>
        \new Lyrics  = EILyricsA
        \new Lyrics = EILyricsAAlt
        \new Lyrics  = EILyricsB
        \new Lyrics = EILyricsBAlt
        \new Lyrics  = EILyricsC
        \new Lyrics = EILyricsCAlt
        \new Lyrics  = EILyricsD
        \new Lyrics = EILyricsDAlt
        \new Lyrics  = EILyricsE
        \new Lyrics = EILyricsEAlt
        \new Lyrics  = EILyricsF
        \new Lyrics = EILyricsFAlt
        \context Staff = EIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = EIVoiceLH \BBGECxAHFMusicLH
        >>
        \context Lyrics = EILyricsA \lyricsto EIVoiceLyrics \EIVerseA
        \context Lyrics = EILyricsAAlt \lyricsto EIVoiceLyrics \EIVerseAAlt
        \context Lyrics = EILyricsB \lyricsto EIVoiceLyrics \EIVerseB
        \context Lyrics = EILyricsBAlt \lyricsto EIVoiceLyrics \EIVerseBAlt
        \context Lyrics = EILyricsC \lyricsto EIVoiceLyrics \EIVerseC
        \context Lyrics = EILyricsCAlt \lyricsto EIVoiceLyrics \EIVerseCAlt
        \context Lyrics = EILyricsD \lyricsto EIVoiceLyrics \EIVerseD
        \context Lyrics = EILyricsDAlt \lyricsto EIVoiceLyrics \EIVerseDAlt
        \context Lyrics = EILyricsE \lyricsto EIVoiceLyrics \EIVerseE
        \context Lyrics = EILyricsEAlt \lyricsto EIVoiceLyrics \EIVerseEAlt
        \context Lyrics = EILyricsF \lyricsto EIVoiceLyrics \EIVerseF
        \context Lyrics = EILyricsFAlt \lyricsto EIVoiceLyrics \EIVerseFAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {60}
        \fontsize #6 \center-align \line {Gebroke en verslae hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {382}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FZStaffGroup <<
        \context Staff = FZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FZVoiceLyrics \BBGEDxCHBMusicLyrics
            \context Voice = FZVoiceRH \BBGEDxCHBMusicRH
        >>
        \new Lyrics  = FZLyricsA
        \new Lyrics = FZLyricsAAlt
        \new Lyrics  = FZLyricsB
        \new Lyrics = FZLyricsBAlt
        \new Lyrics  = FZLyricsC
        \new Lyrics = FZLyricsCAlt
        \context Staff = FZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FZVoiceLH \BBGEDxCHBMusicLH
        >>
        \context Lyrics = FZLyricsA \lyricsto FZVoiceLyrics \FZVerseA
        \context Lyrics = FZLyricsAAlt \lyricsto FZVoiceLyrics \FZVerseAAlt
        \context Lyrics = FZLyricsB \lyricsto FZVoiceLyrics \FZVerseB
        \context Lyrics = FZLyricsBAlt \lyricsto FZVoiceLyrics \FZVerseBAlt
        \context Lyrics = FZLyricsC \lyricsto FZVoiceLyrics \FZVerseC
        \context Lyrics = FZLyricsCAlt \lyricsto FZVoiceLyrics \FZVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {61}
        \fontsize #6 \center-align \line {Gedoop in Jesus Naam}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {267}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FAStaffGroup <<
        \context Staff = FAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FAVoiceLyrics \BBGEExBFGMusicLyrics
            \context Voice = FAVoiceRH \BBGEExBFGMusicRH
        >>
        \new Lyrics  = FALyricsA
        \new Lyrics = FALyricsAAlt
        \new Lyrics  = FALyricsB
        \new Lyrics = FALyricsBAlt
        \new Lyrics  = FALyricsC
        \new Lyrics = FALyricsCAlt
        \new Lyrics  = FALyricsD
        \new Lyrics = FALyricsDAlt
        \context Staff = FAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FAVoiceLH \BBGEExBFGMusicLH
        >>
        \context Lyrics = FALyricsA \lyricsto FAVoiceLyrics \FAVerseA
        \context Lyrics = FALyricsAAlt \lyricsto FAVoiceLyrics \FAVerseAAlt
        \context Lyrics = FALyricsB \lyricsto FAVoiceLyrics \FAVerseB
        \context Lyrics = FALyricsBAlt \lyricsto FAVoiceLyrics \FAVerseBAlt
        \context Lyrics = FALyricsC \lyricsto FAVoiceLyrics \FAVerseC
        \context Lyrics = FALyricsCAlt \lyricsto FAVoiceLyrics \FAVerseCAlt
        \context Lyrics = FALyricsD \lyricsto FAVoiceLyrics \FAVerseD
        \context Lyrics = FALyricsDAlt \lyricsto FAVoiceLyrics \FAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {62}
        \fontsize #6 \center-align \line {Gee aan die Meester}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {33}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FBStaffGroup <<
        \context Staff = FBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FBVoiceLyrics \BBGEFxCCMusicLyrics
            \context Voice = FBVoiceRH \BBGEFxCCMusicRH
        >>
        \new Lyrics  = FBLyricsA
        \new Lyrics = FBLyricsAAlt
        \new Lyrics  = FBLyricsB
        \new Lyrics = FBLyricsBAlt
        \new Lyrics  = FBLyricsC
        \new Lyrics = FBLyricsCAlt
        \context Staff = FBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FBVoiceLH \BBGEFxCCMusicLH
        >>
        \context Lyrics = FBLyricsA \lyricsto FBVoiceLyrics \FBVerseA
        \context Lyrics = FBLyricsAAlt \lyricsto FBVoiceLyrics \FBVerseAAlt
        \context Lyrics = FBLyricsB \lyricsto FBVoiceLyrics \FBVerseB
        \context Lyrics = FBLyricsBAlt \lyricsto FBVoiceLyrics \FBVerseBAlt
        \context Lyrics = FBLyricsC \lyricsto FBVoiceLyrics \FBVerseC
        \context Lyrics = FBLyricsCAlt \lyricsto FBVoiceLyrics \FBVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {63}
        \fontsize #6 \center-align \line {Gee My u hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {89}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FCStaffGroup <<
        \context Staff = FCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FCVoiceLyrics \BBGEGxHIMusicLyrics
            \context Voice = FCVoiceRH \BBGEGxHIMusicRH
        >>
        \new Lyrics  = FCLyricsA
        \new Lyrics = FCLyricsAAlt
        \new Lyrics  = FCLyricsB
        \new Lyrics = FCLyricsBAlt
        \new Lyrics  = FCLyricsC
        \new Lyrics = FCLyricsCAlt
        \context Staff = FCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FCVoiceLH \BBGEGxHIMusicLH
        >>
        \context Lyrics = FCLyricsA \lyricsto FCVoiceLyrics \FCVerseA
        \context Lyrics = FCLyricsAAlt \lyricsto FCVoiceLyrics \FCVerseAAlt
        \context Lyrics = FCLyricsB \lyricsto FCVoiceLyrics \FCVerseB
        \context Lyrics = FCLyricsBAlt \lyricsto FCVoiceLyrics \FCVerseBAlt
        \context Lyrics = FCLyricsC \lyricsto FCVoiceLyrics \FCVerseC
        \context Lyrics = FCLyricsCAlt \lyricsto FCVoiceLyrics \FCVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {64}
        \fontsize #6 \center-align \line {Geen reputasie met Hom}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {408}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FDStaffGroup <<
        \context Staff = FDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FDVoiceLyrics \BBGEHxDZHMusicLyrics
            \context Voice = FDVoiceRH \BBGEHxDZHMusicRH
        >>
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
            \context Voice = FDVoiceLH \BBGEHxDZHMusicLH
        >>
        \context Lyrics = FDLyricsA \lyricsto FDVoiceLyrics \FDVerseA
        \context Lyrics = FDLyricsAAlt \lyricsto FDVoiceLyrics \FDVerseAAlt
        \context Lyrics = FDLyricsB \lyricsto FDVoiceLyrics \FDVerseB
        \context Lyrics = FDLyricsBAlt \lyricsto FDVoiceLyrics \FDVerseBAlt
        \context Lyrics = FDLyricsC \lyricsto FDVoiceLyrics \FDVerseC
        \context Lyrics = FDLyricsCAlt \lyricsto FDVoiceLyrics \FDVerseCAlt
        \context Lyrics = FDLyricsD \lyricsto FDVoiceLyrics \FDVerseD
        \context Lyrics = FDLyricsDAlt \lyricsto FDVoiceLyrics \FDVerseDAlt
        \context Lyrics = FDLyricsE \lyricsto FDVoiceLyrics \FDVerseE
        \context Lyrics = FDLyricsEAlt \lyricsto FDVoiceLyrics \FDVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {65}
        \fontsize #6 \center-align \line {Geen wins waar daar}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {404}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FEStaffGroup <<
        \context Staff = FEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FEVoiceLyrics \BBGEIxDZDMusicLyrics
            \context Voice = FEVoiceRH \BBGEIxDZDMusicRH
        >>
        \new Lyrics  = FELyricsA
        \new Lyrics = FELyricsAAlt
        \new Lyrics  = FELyricsB
        \new Lyrics = FELyricsBAlt
        \new Lyrics  = FELyricsC
        \new Lyrics = FELyricsCAlt
        \context Staff = FEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FEVoiceLH \BBGEIxDZDMusicLH
        >>
        \context Lyrics = FELyricsA \lyricsto FEVoiceLyrics \FEVerseA
        \context Lyrics = FELyricsAAlt \lyricsto FEVoiceLyrics \FEVerseAAlt
        \context Lyrics = FELyricsB \lyricsto FEVoiceLyrics \FEVerseB
        \context Lyrics = FELyricsBAlt \lyricsto FEVoiceLyrics \FEVerseBAlt
        \context Lyrics = FELyricsC \lyricsto FEVoiceLyrics \FEVerseC
        \context Lyrics = FELyricsCAlt \lyricsto FEVoiceLyrics \FEVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {66}
        \fontsize #6 \center-align \line {Geen woord is onvervuld}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {272}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FFStaffGroup <<
        \context Staff = FFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FFVoiceLyrics \BBGFZxBGBMusicLyrics
            \context Voice = FFVoiceRH \BBGFZxBGBMusicRH
        >>
        \new Lyrics  = FFLyricsA
        \new Lyrics = FFLyricsAAlt
        \new Lyrics  = FFLyricsB
        \new Lyrics = FFLyricsBAlt
        \new Lyrics  = FFLyricsC
        \new Lyrics = FFLyricsCAlt
        \new Lyrics  = FFLyricsD
        \new Lyrics = FFLyricsDAlt
        \context Staff = FFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FFVoiceLH \BBGFZxBGBMusicLH
        >>
        \context Lyrics = FFLyricsA \lyricsto FFVoiceLyrics \FFVerseA
        \context Lyrics = FFLyricsAAlt \lyricsto FFVoiceLyrics \FFVerseAAlt
        \context Lyrics = FFLyricsB \lyricsto FFVoiceLyrics \FFVerseB
        \context Lyrics = FFLyricsBAlt \lyricsto FFVoiceLyrics \FFVerseBAlt
        \context Lyrics = FFLyricsC \lyricsto FFVoiceLyrics \FFVerseC
        \context Lyrics = FFLyricsCAlt \lyricsto FFVoiceLyrics \FFVerseCAlt
        \context Lyrics = FFLyricsD \lyricsto FFVoiceLyrics \FFVerseD
        \context Lyrics = FFLyricsDAlt \lyricsto FFVoiceLyrics \FFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {67}
        \fontsize #6 \center-align \line {Geroep tot rus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {410}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FGStaffGroup <<
        \context Staff = FGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FGVoiceLyrics \BBGFAxDAZMusicLyrics
            \context Voice = FGVoiceRH \BBGFAxDAZMusicRH
        >>
        \new Lyrics  = FGLyricsA
        \new Lyrics = FGLyricsAAlt
        \new Lyrics  = FGLyricsB
        \new Lyrics = FGLyricsBAlt
        \new Lyrics  = FGLyricsC
        \new Lyrics = FGLyricsCAlt
        \new Lyrics  = FGLyricsD
        \new Lyrics = FGLyricsDAlt
        \context Staff = FGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FGVoiceLH \BBGFAxDAZMusicLH
        >>
        \context Lyrics = FGLyricsA \lyricsto FGVoiceLyrics \FGVerseA
        \context Lyrics = FGLyricsAAlt \lyricsto FGVoiceLyrics \FGVerseAAlt
        \context Lyrics = FGLyricsB \lyricsto FGVoiceLyrics \FGVerseB
        \context Lyrics = FGLyricsBAlt \lyricsto FGVoiceLyrics \FGVerseBAlt
        \context Lyrics = FGLyricsC \lyricsto FGVoiceLyrics \FGVerseC
        \context Lyrics = FGLyricsCAlt \lyricsto FGVoiceLyrics \FGVerseCAlt
        \context Lyrics = FGLyricsD \lyricsto FGVoiceLyrics \FGVerseD
        \context Lyrics = FGLyricsDAlt \lyricsto FGVoiceLyrics \FGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {68}
        \fontsize #6 \center-align \line {Geseënd is die rus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {15}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FHStaffGroup <<
        \context Staff = FHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FHVoiceLyrics \BBGFBxAELessSylMusicLyrics
            \context Voice = FHVoiceRH \BBGFBxAELessSylMusicRH
        >>
        \new Lyrics  = FHLyricsA
        \new Lyrics = FHLyricsAAlt
        \new Lyrics  = FHLyricsB
        \new Lyrics = FHLyricsBAlt
        \new Lyrics  = FHLyricsC
        \new Lyrics = FHLyricsCAlt
        \new Lyrics  = FHLyricsD
        \new Lyrics = FHLyricsDAlt
        \new Lyrics  = FHLyricsE
        \new Lyrics = FHLyricsEAlt
        \new Lyrics  = FHLyricsF
        \new Lyrics = FHLyricsFAlt
        \context Staff = FHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FHVoiceLH \BBGFBxAELessSylMusicLH
        >>
        \context Lyrics = FHLyricsA \lyricsto FHVoiceLyrics \FHVerseA
        \context Lyrics = FHLyricsAAlt \lyricsto FHVoiceLyrics \FHVerseAAlt
        \context Lyrics = FHLyricsB \lyricsto FHVoiceLyrics \FHVerseB
        \context Lyrics = FHLyricsBAlt \lyricsto FHVoiceLyrics \FHVerseBAlt
        \context Lyrics = FHLyricsC \lyricsto FHVoiceLyrics \FHVerseC
        \context Lyrics = FHLyricsCAlt \lyricsto FHVoiceLyrics \FHVerseCAlt
        \context Lyrics = FHLyricsD \lyricsto FHVoiceLyrics \FHVerseD
        \context Lyrics = FHLyricsDAlt \lyricsto FHVoiceLyrics \FHVerseDAlt
        \context Lyrics = FHLyricsE \lyricsto FHVoiceLyrics \FHVerseE
        \context Lyrics = FHLyricsEAlt \lyricsto FHVoiceLyrics \FHVerseEAlt
        \context Lyrics = FHLyricsF \lyricsto FHVoiceLyrics \FHVerseF
        \context Lyrics = FHLyricsFAlt \lyricsto FHVoiceLyrics \FHVerseFAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {69}
        \fontsize #6 \center-align \line {God het my dwalend' hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {91}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = FIStaffGroup <<
        \context Staff = FIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = FIVoiceLyrics \BBGFCxIAMusicLyrics
            \context Voice = FIVoiceRH \BBGFCxIAMusicRH
        >>
        \new Lyrics  = FILyricsA
        \new Lyrics = FILyricsAAlt
        \new Lyrics  = FILyricsB
        \new Lyrics = FILyricsBAlt
        \new Lyrics  = FILyricsC
        \new Lyrics = FILyricsCAlt
        \context Staff = FIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = FIVoiceLH \BBGFCxIAMusicLH
        >>
        \context Lyrics = FILyricsA \lyricsto FIVoiceLyrics \FIVerseA
        \context Lyrics = FILyricsAAlt \lyricsto FIVoiceLyrics \FIVerseAAlt
        \context Lyrics = FILyricsB \lyricsto FIVoiceLyrics \FIVerseB
        \context Lyrics = FILyricsBAlt \lyricsto FIVoiceLyrics \FIVerseBAlt
        \context Lyrics = FILyricsC \lyricsto FIVoiceLyrics \FIVerseC
        \context Lyrics = FILyricsCAlt \lyricsto FIVoiceLyrics \FIVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {70}
        \fontsize #6 \center-align \line {God het sy dierbaar' Seun}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {212}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GZStaffGroup <<
        \context Staff = GZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GZVoiceLyrics \BBGFDxBABMusicLyrics
            \context Voice = GZVoiceRH \BBGFDxBABMusicRH
        >>
        \new Lyrics  = GZLyricsA
        \new Lyrics = GZLyricsAAlt
        \new Lyrics  = GZLyricsB
        \new Lyrics = GZLyricsBAlt
        \new Lyrics  = GZLyricsC
        \new Lyrics = GZLyricsCAlt
        \context Staff = GZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GZVoiceLH \BBGFDxBABMusicLH
        >>
        \context Lyrics = GZLyricsA \lyricsto GZVoiceLyrics \GZVerseA
        \context Lyrics = GZLyricsAAlt \lyricsto GZVoiceLyrics \GZVerseAAlt
        \context Lyrics = GZLyricsB \lyricsto GZVoiceLyrics \GZVerseB
        \context Lyrics = GZLyricsBAlt \lyricsto GZVoiceLyrics \GZVerseBAlt
        \context Lyrics = GZLyricsC \lyricsto GZVoiceLyrics \GZVerseC
        \context Lyrics = GZLyricsCAlt \lyricsto GZVoiceLyrics \GZVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {71}
        \fontsize #6 \center-align \line {God in genade}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {76}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GAStaffGroup <<
        \context Staff = GAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GAVoiceLyrics \BBGFExGFMusicLyrics
            \context Voice = GAVoiceRH \BBGFExGFMusicRH
        >>
        \new Lyrics  = GALyricsA
        \new Lyrics = GALyricsAAlt
        \new Lyrics  = GALyricsB
        \new Lyrics = GALyricsBAlt
        \new Lyrics  = GALyricsC
        \new Lyrics = GALyricsCAlt
        \new Lyrics  = GALyricsD
        \new Lyrics = GALyricsDAlt
        \context Staff = GAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GAVoiceLH \BBGFExGFMusicLH
        >>
        \context Lyrics = GALyricsA \lyricsto GAVoiceLyrics \GAVerseA
        \context Lyrics = GALyricsAAlt \lyricsto GAVoiceLyrics \GAVerseAAlt
        \context Lyrics = GALyricsB \lyricsto GAVoiceLyrics \GAVerseB
        \context Lyrics = GALyricsBAlt \lyricsto GAVoiceLyrics \GAVerseBAlt
        \context Lyrics = GALyricsC \lyricsto GAVoiceLyrics \GAVerseC
        \context Lyrics = GALyricsCAlt \lyricsto GAVoiceLyrics \GAVerseCAlt
        \context Lyrics = GALyricsD \lyricsto GAVoiceLyrics \GAVerseD
        \context Lyrics = GALyricsDAlt \lyricsto GAVoiceLyrics \GAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {72}
        \fontsize #6 \center-align \line {God is trou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {232}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GBStaffGroup <<
        \context Staff = GBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GBVoiceLyrics \BBGFFxBCBMusicLyrics
            \context Voice = GBVoiceRH \BBGFFxBCBMusicRH
        >>
        \new Lyrics  = GBLyricsA
        \new Lyrics = GBLyricsAAlt
        \new Lyrics  = GBLyricsB
        \new Lyrics = GBLyricsBAlt
        \new Lyrics  = GBLyricsC
        \new Lyrics = GBLyricsCAlt
        \new Lyrics  = GBLyricsD
        \new Lyrics = GBLyricsDAlt
        \context Staff = GBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GBVoiceLH \BBGFFxBCBMusicLH
        >>
        \context Lyrics = GBLyricsA \lyricsto GBVoiceLyrics \GBVerseA
        \context Lyrics = GBLyricsAAlt \lyricsto GBVoiceLyrics \GBVerseAAlt
        \context Lyrics = GBLyricsB \lyricsto GBVoiceLyrics \GBVerseB
        \context Lyrics = GBLyricsBAlt \lyricsto GBVoiceLyrics \GBVerseBAlt
        \context Lyrics = GBLyricsC \lyricsto GBVoiceLyrics \GBVerseC
        \context Lyrics = GBLyricsCAlt \lyricsto GBVoiceLyrics \GBVerseCAlt
        \context Lyrics = GBLyricsD \lyricsto GBVoiceLyrics \GBVerseD
        \context Lyrics = GBLyricsDAlt \lyricsto GBVoiceLyrics \GBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {73}
        \fontsize #6 \center-align \line {God verlang nog immer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {35}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GCStaffGroup <<
        \context Staff = GCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GCVoiceLyrics \BBGFGxCEMusicLyrics
            \context Voice = GCVoiceRH \BBGFGxCEMusicRH
        >>
        \new Lyrics  = GCLyricsA
        \new Lyrics = GCLyricsAAlt
        \new Lyrics  = GCLyricsB
        \new Lyrics = GCLyricsBAlt
        \new Lyrics  = GCLyricsC
        \new Lyrics = GCLyricsCAlt
        \context Staff = GCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GCVoiceLH \BBGFGxCEMusicLH
        >>
        \context Lyrics = GCLyricsA \lyricsto GCVoiceLyrics \GCVerseA
        \context Lyrics = GCLyricsAAlt \lyricsto GCVoiceLyrics \GCVerseAAlt
        \context Lyrics = GCLyricsB \lyricsto GCVoiceLyrics \GCVerseB
        \context Lyrics = GCLyricsBAlt \lyricsto GCVoiceLyrics \GCVerseBAlt
        \context Lyrics = GCLyricsC \lyricsto GCVoiceLyrics \GCVerseC
        \context Lyrics = GCLyricsCAlt \lyricsto GCVoiceLyrics \GCVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {74}
        \fontsize #6 \center-align \line {God versoek u vriend'lik}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {37}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GDStaffGroup <<
        \context Staff = GDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GDVoiceLyrics \BBGFHxCGMusicLyrics
            \context Voice = GDVoiceRH \BBGFHxCGMusicRH
        >>
        \new Lyrics  = GDLyricsA
        \new Lyrics = GDLyricsAAlt
        \new Lyrics  = GDLyricsB
        \new Lyrics = GDLyricsBAlt
        \new Lyrics  = GDLyricsC
        \new Lyrics = GDLyricsCAlt
        \new Lyrics  = GDLyricsD
        \new Lyrics = GDLyricsDAlt
        \context Staff = GDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GDVoiceLH \BBGFHxCGMusicLH
        >>
        \context Lyrics = GDLyricsA \lyricsto GDVoiceLyrics \GDVerseA
        \context Lyrics = GDLyricsAAlt \lyricsto GDVoiceLyrics \GDVerseAAlt
        \context Lyrics = GDLyricsB \lyricsto GDVoiceLyrics \GDVerseB
        \context Lyrics = GDLyricsBAlt \lyricsto GDVoiceLyrics \GDVerseBAlt
        \context Lyrics = GDLyricsC \lyricsto GDVoiceLyrics \GDVerseC
        \context Lyrics = GDLyricsCAlt \lyricsto GDVoiceLyrics \GDVerseCAlt
        \context Lyrics = GDLyricsD \lyricsto GDVoiceLyrics \GDVerseD
        \context Lyrics = GDLyricsDAlt \lyricsto GDVoiceLyrics \GDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {75}
        \fontsize #6 \center-align \line {Gods' tyd is nou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {39}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GEStaffGroup <<
        \context Staff = GEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GEVoiceLyrics \BBGFIxCIMusicLyrics
            \context Voice = GEVoiceRH \BBGFIxCIMusicRH
        >>
        \new Lyrics  = GELyricsA
        \new Lyrics = GELyricsAAlt
        \new Lyrics  = GELyricsB
        \new Lyrics = GELyricsBAlt
        \new Lyrics  = GELyricsC
        \new Lyrics = GELyricsCAlt
        \context Staff = GEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GEVoiceLH \BBGFIxCIMusicLH
        >>
        \context Lyrics = GELyricsA \lyricsto GEVoiceLyrics \GEVerseA
        \context Lyrics = GELyricsAAlt \lyricsto GEVoiceLyrics \GEVerseAAlt
        \context Lyrics = GELyricsB \lyricsto GEVoiceLyrics \GEVerseB
        \context Lyrics = GELyricsBAlt \lyricsto GEVoiceLyrics \GEVerseBAlt
        \context Lyrics = GELyricsC \lyricsto GEVoiceLyrics \GEVerseC
        \context Lyrics = GELyricsCAlt \lyricsto GEVoiceLyrics \GEVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {76}
        \fontsize #6 \center-align \line {Gods' woord is so rein}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {29}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GFStaffGroup <<
        \context Staff = GFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GFVoiceLyrics \BBGGZxBIMusicLyrics
            \context Voice = GFVoiceRH \BBGGZxBIMusicRH
        >>
        \new Lyrics  = GFLyricsA
        \new Lyrics = GFLyricsAAlt
        \new Lyrics  = GFLyricsB
        \new Lyrics = GFLyricsBAlt
        \new Lyrics  = GFLyricsC
        \new Lyrics = GFLyricsCAlt
        \new Lyrics  = GFLyricsD
        \new Lyrics = GFLyricsDAlt
        \context Staff = GFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GFVoiceLH \BBGGZxBIMusicLH
        >>
        \new Lyrics = GFLyricsBelow
        \context Lyrics = GFLyricsA \lyricsto GFVoiceLyrics \GFVerseA
        \context Lyrics = GFLyricsAAlt \lyricsto GFVoiceLyrics \GFVerseAAlt
        \context Lyrics = GFLyricsB \lyricsto GFVoiceLyrics \GFVerseB
        \context Lyrics = GFLyricsBAlt \lyricsto GFVoiceLyrics \GFVerseBAlt
        \context Lyrics = GFLyricsC \lyricsto GFVoiceLyrics \GFVerseC
        \context Lyrics = GFLyricsCAlt \lyricsto GFVoiceLyrics \GFVerseCAlt
        \context Lyrics = GFLyricsD \lyricsto GFVoiceLyrics \GFVerseD
        \context Lyrics = GFLyricsDAlt \lyricsto GFVoiceLyrics \GFVerseDAlt
        \context Lyrics = GFLyricsBelow \lyricsto GFVoiceLyrics \GFBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {77}
        \fontsize #6 \center-align \line {Goedgekeur deur God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {365}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GGStaffGroup <<
        \context Staff = GGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GGVoiceLyrics \BBGGAxCFEMusicLyrics
            \context Voice = GGVoiceRH \BBGGAxCFEMusicRH
        >>
        \new Lyrics  = GGLyricsA
        \new Lyrics = GGLyricsAAlt
        \new Lyrics  = GGLyricsB
        \new Lyrics = GGLyricsBAlt
        \new Lyrics  = GGLyricsC
        \new Lyrics = GGLyricsCAlt
        \context Staff = GGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GGVoiceLH \BBGGAxCFEMusicLH
        >>
        \context Lyrics = GGLyricsA \lyricsto GGVoiceLyrics \GGVerseA
        \context Lyrics = GGLyricsAAlt \lyricsto GGVoiceLyrics \GGVerseAAlt
        \context Lyrics = GGLyricsB \lyricsto GGVoiceLyrics \GGVerseB
        \context Lyrics = GGLyricsBAlt \lyricsto GGVoiceLyrics \GGVerseBAlt
        \context Lyrics = GGLyricsC \lyricsto GGVoiceLyrics \GGVerseC
        \context Lyrics = GGLyricsCAlt \lyricsto GGVoiceLyrics \GGVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {78}
        \fontsize #6 \center-align \line {Harte het die wêreld nodig}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {321}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GHStaffGroup <<
        \context Staff = GHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GHVoiceLyrics \BBGGBxCBAMusicLyrics
            \context Voice = GHVoiceRH \BBGGBxCBAMusicRH
        >>
        \new Lyrics  = GHLyricsA
        \new Lyrics = GHLyricsAAlt
        \new Lyrics  = GHLyricsB
        \new Lyrics = GHLyricsBAlt
        \new Lyrics  = GHLyricsC
        \new Lyrics = GHLyricsCAlt
        \context Staff = GHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GHVoiceLH \BBGGBxCBAMusicLH
        >>
        \new Lyrics = GHLyricsBelow
        \context Lyrics = GHLyricsA \lyricsto GHVoiceLyrics \GHVerseA
        \context Lyrics = GHLyricsAAlt \lyricsto GHVoiceLyrics \GHVerseAAlt
        \context Lyrics = GHLyricsB \lyricsto GHVoiceLyrics \GHVerseB
        \context Lyrics = GHLyricsBAlt \lyricsto GHVoiceLyrics \GHVerseBAlt
        \context Lyrics = GHLyricsC \lyricsto GHVoiceLyrics \GHVerseC
        \context Lyrics = GHLyricsCAlt \lyricsto GHVoiceLyrics \GHVerseCAlt
        \context Lyrics = GHLyricsBelow \lyricsto GHVoiceLyrics \GHBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {79}
        \fontsize #6 \center-align \line {Heer, dek tog met U vleuels}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {204}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = GIStaffGroup <<
        \context Staff = GIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = GIVoiceLyrics \BBGGCxBZDMusicLyrics
            \context Voice = GIVoiceRH \BBGGCxBZDMusicRH
        >>
        \new Lyrics  = GILyricsA
        \new Lyrics = GILyricsAAlt
        \new Lyrics  = GILyricsB
        \new Lyrics = GILyricsBAlt
        \new Lyrics  = GILyricsC
        \new Lyrics = GILyricsCAlt
        \new Lyrics  = GILyricsD
        \new Lyrics = GILyricsDAlt
        \new Lyrics  = GILyricsE
        \new Lyrics = GILyricsEAlt
        \context Staff = GIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = GIVoiceLH \BBGGCxBZDMusicLH
        >>
        \context Lyrics = GILyricsA \lyricsto GIVoiceLyrics \GIVerseA
        \context Lyrics = GILyricsAAlt \lyricsto GIVoiceLyrics \GIVerseAAlt
        \context Lyrics = GILyricsB \lyricsto GIVoiceLyrics \GIVerseB
        \context Lyrics = GILyricsBAlt \lyricsto GIVoiceLyrics \GIVerseBAlt
        \context Lyrics = GILyricsC \lyricsto GIVoiceLyrics \GIVerseC
        \context Lyrics = GILyricsCAlt \lyricsto GIVoiceLyrics \GIVerseCAlt
        \context Lyrics = GILyricsD \lyricsto GIVoiceLyrics \GIVerseD
        \context Lyrics = GILyricsDAlt \lyricsto GIVoiceLyrics \GIVerseDAlt
        \context Lyrics = GILyricsE \lyricsto GIVoiceLyrics \GIVerseE
        \context Lyrics = GILyricsEAlt \lyricsto GIVoiceLyrics \GIVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {80}
        \fontsize #6 \center-align \line {Heer, deur die bloed}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {384}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HZStaffGroup <<
        \context Staff = HZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HZVoiceLyrics \BBGGDxCHDMusicLyrics
            \context Voice = HZVoiceRH \BBGGDxCHDMusicRH
        >>
        \new Lyrics  = HZLyricsA
        \new Lyrics = HZLyricsAAlt
        \new Lyrics  = HZLyricsB
        \new Lyrics = HZLyricsBAlt
        \new Lyrics  = HZLyricsC
        \new Lyrics = HZLyricsCAlt
        \context Staff = HZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HZVoiceLH \BBGGDxCHDMusicLH
        >>
        \context Lyrics = HZLyricsA \lyricsto HZVoiceLyrics \HZVerseA
        \context Lyrics = HZLyricsAAlt \lyricsto HZVoiceLyrics \HZVerseAAlt
        \context Lyrics = HZLyricsB \lyricsto HZVoiceLyrics \HZVerseB
        \context Lyrics = HZLyricsBAlt \lyricsto HZVoiceLyrics \HZVerseBAlt
        \context Lyrics = HZLyricsC \lyricsto HZVoiceLyrics \HZVerseC
        \context Lyrics = HZLyricsCAlt \lyricsto HZVoiceLyrics \HZVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {81}
        \fontsize #6 \center-align \line {Heer ek begeer nou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {161}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HAStaffGroup <<
        \context Staff = HAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HAVoiceLyrics \BBGGExAFAMoreSylMusicLyrics
            \context Voice = HAVoiceRH \BBGGExAFAMoreSylMusicRH
        >>
        \new Lyrics  = HALyricsA
        \new Lyrics = HALyricsAAlt
        \new Lyrics  = HALyricsB
        \new Lyrics = HALyricsBAlt
        \new Lyrics  = HALyricsC
        \new Lyrics = HALyricsCAlt
        \new Lyrics  = HALyricsD
        \new Lyrics = HALyricsDAlt
        \context Staff = HAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HAVoiceLH \BBGGExAFAMoreSylMusicLH
        >>
        \context Lyrics = HALyricsA \lyricsto HAVoiceLyrics \HAVerseA
        \context Lyrics = HALyricsAAlt \lyricsto HAVoiceLyrics \HAVerseAAlt
        \context Lyrics = HALyricsB \lyricsto HAVoiceLyrics \HAVerseB
        \context Lyrics = HALyricsBAlt \lyricsto HAVoiceLyrics \HAVerseBAlt
        \context Lyrics = HALyricsC \lyricsto HAVoiceLyrics \HAVerseC
        \context Lyrics = HALyricsCAlt \lyricsto HAVoiceLyrics \HAVerseCAlt
        \context Lyrics = HALyricsD \lyricsto HAVoiceLyrics \HAVerseD
        \context Lyrics = HALyricsDAlt \lyricsto HAVoiceLyrics \HAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {82}
        \fontsize #6 \center-align \line {Heer, gee my 'n hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {12}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HBStaffGroup <<
        \context Staff = HBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HBVoiceLyrics \BBGGFxABMusicLyrics
            \context Voice = HBVoiceRH \BBGGFxABMusicRH
        >>
        \new Lyrics  = HBLyricsA
        \new Lyrics = HBLyricsAAlt
        \new Lyrics  = HBLyricsB
        \new Lyrics = HBLyricsBAlt
        \new Lyrics  = HBLyricsC
        \new Lyrics = HBLyricsCAlt
        \new Lyrics  = HBLyricsD
        \new Lyrics = HBLyricsDAlt
        \context Staff = HBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HBVoiceLH \BBGGFxABMusicLH
        >>
        \context Lyrics = HBLyricsA \lyricsto HBVoiceLyrics \HBVerseA
        \context Lyrics = HBLyricsAAlt \lyricsto HBVoiceLyrics \HBVerseAAlt
        \context Lyrics = HBLyricsB \lyricsto HBVoiceLyrics \HBVerseB
        \context Lyrics = HBLyricsBAlt \lyricsto HBVoiceLyrics \HBVerseBAlt
        \context Lyrics = HBLyricsC \lyricsto HBVoiceLyrics \HBVerseC
        \context Lyrics = HBLyricsCAlt \lyricsto HBVoiceLyrics \HBVerseCAlt
        \context Lyrics = HBLyricsD \lyricsto HBVoiceLyrics \HBVerseD
        \context Lyrics = HBLyricsDAlt \lyricsto HBVoiceLyrics \HBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {83}
        \fontsize #6 \center-align \line {Heer hoe lief het ons}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {181}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HCStaffGroup <<
        \context Staff = HCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HCVoiceLyrics \BBGGGxAHAMusicLyrics
            \context Voice = HCVoiceRH \BBGGGxAHAMusicRH
        >>
        \new Lyrics  = HCLyricsA
        \new Lyrics = HCLyricsAAlt
        \new Lyrics  = HCLyricsB
        \new Lyrics = HCLyricsBAlt
        \new Lyrics  = HCLyricsC
        \new Lyrics = HCLyricsCAlt
        \new Lyrics  = HCLyricsD
        \new Lyrics = HCLyricsDAlt
        \context Staff = HCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HCVoiceLH \BBGGGxAHAMusicLH
        >>
        \context Lyrics = HCLyricsA \lyricsto HCVoiceLyrics \HCVerseA
        \context Lyrics = HCLyricsAAlt \lyricsto HCVoiceLyrics \HCVerseAAlt
        \context Lyrics = HCLyricsB \lyricsto HCVoiceLyrics \HCVerseB
        \context Lyrics = HCLyricsBAlt \lyricsto HCVoiceLyrics \HCVerseBAlt
        \context Lyrics = HCLyricsC \lyricsto HCVoiceLyrics \HCVerseC
        \context Lyrics = HCLyricsCAlt \lyricsto HCVoiceLyrics \HCVerseCAlt
        \context Lyrics = HCLyricsD \lyricsto HCVoiceLyrics \HCVerseD
        \context Lyrics = HCLyricsDAlt \lyricsto HCVoiceLyrics \HCVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {84}
        \fontsize #6 \center-align \line {Heer, in ons nood}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {230}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HDStaffGroup <<
        \context Staff = HDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HDVoiceLyrics \BBGGHxBCZMusicLyrics
            \context Voice = HDVoiceRH \BBGGHxBCZMusicRH
        >>
        \new Lyrics  = HDLyricsA
        \new Lyrics = HDLyricsAAlt
        \new Lyrics  = HDLyricsB
        \new Lyrics = HDLyricsBAlt
        \new Lyrics  = HDLyricsC
        \new Lyrics = HDLyricsCAlt
        \new Lyrics  = HDLyricsD
        \new Lyrics = HDLyricsDAlt
        \context Staff = HDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HDVoiceLH \BBGGHxBCZMusicLH
        >>
        \context Lyrics = HDLyricsA \lyricsto HDVoiceLyrics \HDVerseA
        \context Lyrics = HDLyricsAAlt \lyricsto HDVoiceLyrics \HDVerseAAlt
        \context Lyrics = HDLyricsB \lyricsto HDVoiceLyrics \HDVerseB
        \context Lyrics = HDLyricsBAlt \lyricsto HDVoiceLyrics \HDVerseBAlt
        \context Lyrics = HDLyricsC \lyricsto HDVoiceLyrics \HDVerseC
        \context Lyrics = HDLyricsCAlt \lyricsto HDVoiceLyrics \HDVerseCAlt
        \context Lyrics = HDLyricsD \lyricsto HDVoiceLyrics \HDVerseD
        \context Lyrics = HDLyricsDAlt \lyricsto HDVoiceLyrics \HDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {85}
        \fontsize #6 \center-align \line {Heer Jesus lei}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {46}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HEStaffGroup <<
        \context Staff = HEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HEVoiceLyrics \BBGGIxDFMusicLyrics
            \context Voice = HEVoiceRH \BBGGIxDFMusicRH
        >>
        \new Lyrics  = HELyricsA
        \new Lyrics = HELyricsAAlt
        \new Lyrics  = HELyricsB
        \new Lyrics = HELyricsBAlt
        \new Lyrics  = HELyricsC
        \new Lyrics = HELyricsCAlt
        \context Staff = HEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HEVoiceLH \BBGGIxDFMusicLH
        >>
        \context Lyrics = HELyricsA \lyricsto HEVoiceLyrics \HEVerseA
        \context Lyrics = HELyricsAAlt \lyricsto HEVoiceLyrics \HEVerseAAlt
        \context Lyrics = HELyricsB \lyricsto HEVoiceLyrics \HEVerseB
        \context Lyrics = HELyricsBAlt \lyricsto HEVoiceLyrics \HEVerseBAlt
        \context Lyrics = HELyricsC \lyricsto HEVoiceLyrics \HEVerseC
        \context Lyrics = HELyricsCAlt \lyricsto HEVoiceLyrics \HEVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {86}
        \fontsize #6 \center-align \line {Heer, mag my lewe wees}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {402}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HFStaffGroup <<
        \context Staff = HFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HFVoiceLyrics \BBGHZxDZBMusicLyrics
            \context Voice = HFVoiceRH \BBGHZxDZBMusicRH
        >>
        \new Lyrics  = HFLyricsA
        \new Lyrics = HFLyricsAAlt
        \new Lyrics  = HFLyricsB
        \new Lyrics = HFLyricsBAlt
        \new Lyrics  = HFLyricsC
        \new Lyrics = HFLyricsCAlt
        \new Lyrics  = HFLyricsD
        \new Lyrics = HFLyricsDAlt
        \context Staff = HFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HFVoiceLH \BBGHZxDZBMusicLH
        >>
        \context Lyrics = HFLyricsA \lyricsto HFVoiceLyrics \HFVerseA
        \context Lyrics = HFLyricsAAlt \lyricsto HFVoiceLyrics \HFVerseAAlt
        \context Lyrics = HFLyricsB \lyricsto HFVoiceLyrics \HFVerseB
        \context Lyrics = HFLyricsBAlt \lyricsto HFVoiceLyrics \HFVerseBAlt
        \context Lyrics = HFLyricsC \lyricsto HFVoiceLyrics \HFVerseC
        \context Lyrics = HFLyricsCAlt \lyricsto HFVoiceLyrics \HFVerseCAlt
        \context Lyrics = HFLyricsD \lyricsto HFVoiceLyrics \HFVerseD
        \context Lyrics = HFLyricsDAlt \lyricsto HFVoiceLyrics \HFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {87}
        \fontsize #6 \center-align \line {Heer, ons buig ons}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {391}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HGStaffGroup <<
        \context Staff = HGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HGVoiceLyrics \BBGHAxCIAMusicLyrics
            \context Voice = HGVoiceRH \BBGHAxCIAMusicRH
        >>
        \new Lyrics  = HGLyricsA
        \new Lyrics = HGLyricsAAlt
        \new Lyrics  = HGLyricsB
        \new Lyrics = HGLyricsBAlt
        \new Lyrics  = HGLyricsC
        \new Lyrics = HGLyricsCAlt
        \new Lyrics  = HGLyricsD
        \new Lyrics = HGLyricsDAlt
        \context Staff = HGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HGVoiceLH \BBGHAxCIAMusicLH
        >>
        \new Lyrics = HGLyricsBelow
        \context Lyrics = HGLyricsA \lyricsto HGVoiceLyrics \HGVerseA
        \context Lyrics = HGLyricsAAlt \lyricsto HGVoiceLyrics \HGVerseAAlt
        \context Lyrics = HGLyricsB \lyricsto HGVoiceLyrics \HGVerseB
        \context Lyrics = HGLyricsBAlt \lyricsto HGVoiceLyrics \HGVerseBAlt
        \context Lyrics = HGLyricsC \lyricsto HGVoiceLyrics \HGVerseC
        \context Lyrics = HGLyricsCAlt \lyricsto HGVoiceLyrics \HGVerseCAlt
        \context Lyrics = HGLyricsD \lyricsto HGVoiceLyrics \HGVerseD
        \context Lyrics = HGLyricsDAlt \lyricsto HGVoiceLyrics \HGVerseDAlt
        \context Lyrics = HGLyricsBelow \lyricsto HGVoiceLyrics \HGBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {88}
        \fontsize #6 \center-align \line {Heer, skenk U volk gena'}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {370}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HHStaffGroup <<
        \context Staff = HHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HHVoiceLyrics \BBGHBxCGZMusicLyrics
            \context Voice = HHVoiceRH \BBGHBxCGZMusicRH
        >>
        \new Lyrics  = HHLyricsA
        \new Lyrics = HHLyricsAAlt
        \new Lyrics  = HHLyricsB
        \new Lyrics = HHLyricsBAlt
        \new Lyrics  = HHLyricsC
        \new Lyrics = HHLyricsCAlt
        \new Lyrics  = HHLyricsD
        \new Lyrics = HHLyricsDAlt
        \context Staff = HHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HHVoiceLH \BBGHBxCGZMusicLH
        >>
        \context Lyrics = HHLyricsA \lyricsto HHVoiceLyrics \HHVerseA
        \context Lyrics = HHLyricsAAlt \lyricsto HHVoiceLyrics \HHVerseAAlt
        \context Lyrics = HHLyricsB \lyricsto HHVoiceLyrics \HHVerseB
        \context Lyrics = HHLyricsBAlt \lyricsto HHVoiceLyrics \HHVerseBAlt
        \context Lyrics = HHLyricsC \lyricsto HHVoiceLyrics \HHVerseC
        \context Lyrics = HHLyricsCAlt \lyricsto HHVoiceLyrics \HHVerseCAlt
        \context Lyrics = HHLyricsD \lyricsto HHVoiceLyrics \HHVerseD
        \context Lyrics = HHLyricsDAlt \lyricsto HHVoiceLyrics \HHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {89}
        \fontsize #6 \center-align \line {Heer, spreek tot my}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {225}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = HIStaffGroup <<
        \context Staff = HIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = HIVoiceLyrics \BBGHCxBBEMusicLyrics
            \context Voice = HIVoiceRH \BBGHCxBBEMusicRH
        >>
        \new Lyrics  = HILyricsA
        \new Lyrics = HILyricsAAlt
        \new Lyrics  = HILyricsB
        \new Lyrics = HILyricsBAlt
        \new Lyrics  = HILyricsC
        \new Lyrics = HILyricsCAlt
        \new Lyrics  = HILyricsD
        \new Lyrics = HILyricsDAlt
        \new Lyrics  = HILyricsE
        \new Lyrics = HILyricsEAlt
        \context Staff = HIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = HIVoiceLH \BBGHCxBBEMusicLH
        >>
        \context Lyrics = HILyricsA \lyricsto HIVoiceLyrics \HIVerseA
        \context Lyrics = HILyricsAAlt \lyricsto HIVoiceLyrics \HIVerseAAlt
        \context Lyrics = HILyricsB \lyricsto HIVoiceLyrics \HIVerseB
        \context Lyrics = HILyricsBAlt \lyricsto HIVoiceLyrics \HIVerseBAlt
        \context Lyrics = HILyricsC \lyricsto HIVoiceLyrics \HIVerseC
        \context Lyrics = HILyricsCAlt \lyricsto HIVoiceLyrics \HIVerseCAlt
        \context Lyrics = HILyricsD \lyricsto HIVoiceLyrics \HIVerseD
        \context Lyrics = HILyricsDAlt \lyricsto HIVoiceLyrics \HIVerseDAlt
        \context Lyrics = HILyricsE \lyricsto HIVoiceLyrics \HIVerseE
        \context Lyrics = HILyricsEAlt \lyricsto HIVoiceLyrics \HIVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {90}
        \fontsize #6 \center-align \line {Heer, U goedkeuring}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {299}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IZStaffGroup <<
        \context Staff = IZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IZVoiceLyrics \BBGHDxBIIMusicLyrics
            \context Voice = IZVoiceRH \BBGHDxBIIMusicRH
        >>
        \new Lyrics  = IZLyricsA
        \new Lyrics = IZLyricsAAlt
        \new Lyrics  = IZLyricsB
        \new Lyrics = IZLyricsBAlt
        \new Lyrics  = IZLyricsC
        \new Lyrics = IZLyricsCAlt
        \new Lyrics  = IZLyricsD
        \new Lyrics = IZLyricsDAlt
        \context Staff = IZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IZVoiceLH \BBGHDxBIIMusicLH
        >>
        \context Lyrics = IZLyricsA \lyricsto IZVoiceLyrics \IZVerseA
        \context Lyrics = IZLyricsAAlt \lyricsto IZVoiceLyrics \IZVerseAAlt
        \context Lyrics = IZLyricsB \lyricsto IZVoiceLyrics \IZVerseB
        \context Lyrics = IZLyricsBAlt \lyricsto IZVoiceLyrics \IZVerseBAlt
        \context Lyrics = IZLyricsC \lyricsto IZVoiceLyrics \IZVerseC
        \context Lyrics = IZLyricsCAlt \lyricsto IZVoiceLyrics \IZVerseCAlt
        \context Lyrics = IZLyricsD \lyricsto IZVoiceLyrics \IZVerseD
        \context Lyrics = IZLyricsDAlt \lyricsto IZVoiceLyrics \IZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {91}
        \fontsize #6 \center-align \line {Heer U is my ewig' erfdeel}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {303}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IAStaffGroup <<
        \context Staff = IAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IAVoiceLyrics \BBGHExCZCMusicLyrics
            \context Voice = IAVoiceRH \BBGHExCZCMusicRH
        >>
        \new Lyrics  = IALyricsA
        \new Lyrics = IALyricsAAlt
        \new Lyrics  = IALyricsB
        \new Lyrics = IALyricsBAlt
        \new Lyrics  = IALyricsC
        \new Lyrics = IALyricsCAlt
        \context Staff = IAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IAVoiceLH \BBGHExCZCMusicLH
        >>
        \context Lyrics = IALyricsA \lyricsto IAVoiceLyrics \IAVerseA
        \context Lyrics = IALyricsAAlt \lyricsto IAVoiceLyrics \IAVerseAAlt
        \context Lyrics = IALyricsB \lyricsto IAVoiceLyrics \IAVerseB
        \context Lyrics = IALyricsBAlt \lyricsto IAVoiceLyrics \IAVerseBAlt
        \context Lyrics = IALyricsC \lyricsto IAVoiceLyrics \IAVerseC
        \context Lyrics = IALyricsCAlt \lyricsto IAVoiceLyrics \IAVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {92}
        \fontsize #6 \center-align \line {Heer, wees U tog}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {227}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IBStaffGroup <<
        \context Staff = IBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IBVoiceLyrics \BBGHFxBBGMusicLyrics
            \context Voice = IBVoiceRH \BBGHFxBBGMusicRH
        >>
        \new Lyrics  = IBLyricsA
        \new Lyrics = IBLyricsAAlt
        \new Lyrics  = IBLyricsB
        \new Lyrics = IBLyricsBAlt
        \new Lyrics  = IBLyricsC
        \new Lyrics = IBLyricsCAlt
        \new Lyrics  = IBLyricsD
        \new Lyrics = IBLyricsDAlt
        \context Staff = IBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IBVoiceLH \BBGHFxBBGMusicLH
        >>
        \context Lyrics = IBLyricsA \lyricsto IBVoiceLyrics \IBVerseA
        \context Lyrics = IBLyricsAAlt \lyricsto IBVoiceLyrics \IBVerseAAlt
        \context Lyrics = IBLyricsB \lyricsto IBVoiceLyrics \IBVerseB
        \context Lyrics = IBLyricsBAlt \lyricsto IBVoiceLyrics \IBVerseBAlt
        \context Lyrics = IBLyricsC \lyricsto IBVoiceLyrics \IBVerseC
        \context Lyrics = IBLyricsCAlt \lyricsto IBVoiceLyrics \IBVerseCAlt
        \context Lyrics = IBLyricsD \lyricsto IBVoiceLyrics \IBVerseD
        \context Lyrics = IBLyricsDAlt \lyricsto IBVoiceLyrics \IBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {93}
        \fontsize #6 \center-align \line {Heiland, ek sal juigend}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {78}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ICStaffGroup <<
        \context Staff = ICStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ICVoiceLyrics \BBGHGxGHMusicLyrics
            \context Voice = ICVoiceRH \BBGHGxGHMusicRH
        >>
        \new Lyrics  = ICLyricsA
        \new Lyrics = ICLyricsAAlt
        \new Lyrics  = ICLyricsB
        \new Lyrics = ICLyricsBAlt
        \new Lyrics  = ICLyricsC
        \new Lyrics = ICLyricsCAlt
        \new Lyrics  = ICLyricsD
        \new Lyrics = ICLyricsDAlt
        \context Staff = ICStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ICVoiceLH \BBGHGxGHMusicLH
        >>
        \context Lyrics = ICLyricsA \lyricsto ICVoiceLyrics \ICVerseA
        \context Lyrics = ICLyricsAAlt \lyricsto ICVoiceLyrics \ICVerseAAlt
        \context Lyrics = ICLyricsB \lyricsto ICVoiceLyrics \ICVerseB
        \context Lyrics = ICLyricsBAlt \lyricsto ICVoiceLyrics \ICVerseBAlt
        \context Lyrics = ICLyricsC \lyricsto ICVoiceLyrics \ICVerseC
        \context Lyrics = ICLyricsCAlt \lyricsto ICVoiceLyrics \ICVerseCAlt
        \context Lyrics = ICLyricsD \lyricsto ICVoiceLyrics \ICVerseD
        \context Lyrics = ICLyricsDAlt \lyricsto ICVoiceLyrics \ICVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {94}
        \fontsize #6 \center-align \line {Heiland, hou my trou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {336}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IDStaffGroup <<
        \context Staff = IDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IDVoiceLyrics \BBGHHxCCFMusicLyrics
            \context Voice = IDVoiceRH \BBGHHxCCFMusicRH
        >>
        \new Lyrics  = IDLyricsA
        \new Lyrics = IDLyricsAAlt
        \new Lyrics  = IDLyricsB
        \new Lyrics = IDLyricsBAlt
        \new Lyrics  = IDLyricsC
        \new Lyrics = IDLyricsCAlt
        \new Lyrics  = IDLyricsD
        \new Lyrics = IDLyricsDAlt
        \context Staff = IDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IDVoiceLH \BBGHHxCCFMusicLH
        >>
        \context Lyrics = IDLyricsA \lyricsto IDVoiceLyrics \IDVerseA
        \context Lyrics = IDLyricsAAlt \lyricsto IDVoiceLyrics \IDVerseAAlt
        \context Lyrics = IDLyricsB \lyricsto IDVoiceLyrics \IDVerseB
        \context Lyrics = IDLyricsBAlt \lyricsto IDVoiceLyrics \IDVerseBAlt
        \context Lyrics = IDLyricsC \lyricsto IDVoiceLyrics \IDVerseC
        \context Lyrics = IDLyricsCAlt \lyricsto IDVoiceLyrics \IDVerseCAlt
        \context Lyrics = IDLyricsD \lyricsto IDVoiceLyrics \IDVerseD
        \context Lyrics = IDLyricsDAlt \lyricsto IDVoiceLyrics \IDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {95}
        \fontsize #6 \center-align \line {Heil'ge Gees, kom daal nou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {207}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IEStaffGroup <<
        \context Staff = IEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IEVoiceLyrics \BBGHIxBZGMusicLyrics
            \context Voice = IEVoiceRH \BBGHIxBZGMusicRH
        >>
        \new Lyrics  = IELyricsA
        \new Lyrics = IELyricsAAlt
        \new Lyrics  = IELyricsB
        \new Lyrics = IELyricsBAlt
        \new Lyrics  = IELyricsC
        \new Lyrics = IELyricsCAlt
        \new Lyrics  = IELyricsD
        \new Lyrics = IELyricsDAlt
        \context Staff = IEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IEVoiceLH \BBGHIxBZGMusicLH
        >>
        \context Lyrics = IELyricsA \lyricsto IEVoiceLyrics \IEVerseA
        \context Lyrics = IELyricsAAlt \lyricsto IEVoiceLyrics \IEVerseAAlt
        \context Lyrics = IELyricsB \lyricsto IEVoiceLyrics \IEVerseB
        \context Lyrics = IELyricsBAlt \lyricsto IEVoiceLyrics \IEVerseBAlt
        \context Lyrics = IELyricsC \lyricsto IEVoiceLyrics \IEVerseC
        \context Lyrics = IELyricsCAlt \lyricsto IEVoiceLyrics \IEVerseCAlt
        \context Lyrics = IELyricsD \lyricsto IEVoiceLyrics \IEVerseD
        \context Lyrics = IELyricsDAlt \lyricsto IEVoiceLyrics \IEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {96}
        \fontsize #6 \center-align \line {Help my, Heer, U dien}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {322}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IFStaffGroup <<
        \context Staff = IFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IFVoiceLyrics \BBGIZxCBBMusicLyrics
            \context Voice = IFVoiceRH \BBGIZxCBBMusicRH
        >>
        \new Lyrics  = IFLyricsA
        \new Lyrics = IFLyricsAAlt
        \new Lyrics  = IFLyricsB
        \new Lyrics = IFLyricsBAlt
        \new Lyrics  = IFLyricsC
        \new Lyrics = IFLyricsCAlt
        \new Lyrics  = IFLyricsD
        \new Lyrics = IFLyricsDAlt
        \context Staff = IFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IFVoiceLH \BBGIZxCBBMusicLH
        >>
        \context Lyrics = IFLyricsA \lyricsto IFVoiceLyrics \IFVerseA
        \context Lyrics = IFLyricsAAlt \lyricsto IFVoiceLyrics \IFVerseAAlt
        \context Lyrics = IFLyricsB \lyricsto IFVoiceLyrics \IFVerseB
        \context Lyrics = IFLyricsBAlt \lyricsto IFVoiceLyrics \IFVerseBAlt
        \context Lyrics = IFLyricsC \lyricsto IFVoiceLyrics \IFVerseC
        \context Lyrics = IFLyricsCAlt \lyricsto IFVoiceLyrics \IFVerseCAlt
        \context Lyrics = IFLyricsD \lyricsto IFVoiceLyrics \IFVerseD
        \context Lyrics = IFLyricsDAlt \lyricsto IFVoiceLyrics \IFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {97}
        \fontsize #6 \center-align \line {Help my U vind}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {196}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IGStaffGroup <<
        \context Staff = IGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IGVoiceLyrics \BBGIAxAIFMusicLyrics
            \context Voice = IGVoiceRH \BBGIAxAIFMusicRH
        >>
        \new Lyrics  = IGLyricsA
        \new Lyrics = IGLyricsAAlt
        \new Lyrics  = IGLyricsB
        \new Lyrics = IGLyricsBAlt
        \new Lyrics  = IGLyricsC
        \new Lyrics = IGLyricsCAlt
        \new Lyrics  = IGLyricsD
        \new Lyrics = IGLyricsDAlt
        \context Staff = IGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IGVoiceLH \BBGIAxAIFMusicLH
        >>
        \context Lyrics = IGLyricsA \lyricsto IGVoiceLyrics \IGVerseA
        \context Lyrics = IGLyricsAAlt \lyricsto IGVoiceLyrics \IGVerseAAlt
        \context Lyrics = IGLyricsB \lyricsto IGVoiceLyrics \IGVerseB
        \context Lyrics = IGLyricsBAlt \lyricsto IGVoiceLyrics \IGVerseBAlt
        \context Lyrics = IGLyricsC \lyricsto IGVoiceLyrics \IGVerseC
        \context Lyrics = IGLyricsCAlt \lyricsto IGVoiceLyrics \IGVerseCAlt
        \context Lyrics = IGLyricsD \lyricsto IGVoiceLyrics \IGVerseD
        \context Lyrics = IGLyricsDAlt \lyricsto IGVoiceLyrics \IGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {98}
        \fontsize #6 \center-align \line {Herder van Israel}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {310}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IHStaffGroup <<
        \context Staff = IHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IHVoiceLyrics \BBGIBxCAZMusicLyrics
            \context Voice = IHVoiceRH \BBGIBxCAZMusicRH
        >>
        \new Lyrics  = IHLyricsA
        \new Lyrics = IHLyricsAAlt
        \new Lyrics  = IHLyricsB
        \new Lyrics = IHLyricsBAlt
        \new Lyrics  = IHLyricsC
        \new Lyrics = IHLyricsCAlt
        \context Staff = IHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IHVoiceLH \BBGIBxCAZMusicLH
        >>
        \context Lyrics = IHLyricsA \lyricsto IHVoiceLyrics \IHVerseA
        \context Lyrics = IHLyricsAAlt \lyricsto IHVoiceLyrics \IHVerseAAlt
        \context Lyrics = IHLyricsB \lyricsto IHVoiceLyrics \IHVerseB
        \context Lyrics = IHLyricsBAlt \lyricsto IHVoiceLyrics \IHVerseBAlt
        \context Lyrics = IHLyricsC \lyricsto IHVoiceLyrics \IHVerseC
        \context Lyrics = IHLyricsCAlt \lyricsto IHVoiceLyrics \IHVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {99}
        \fontsize #6 \center-align \line {Het u al beproef}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {78}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = IIStaffGroup <<
        \context Staff = IIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = IIVoiceLyrics \BBGICxGHMusicLyrics
            \context Voice = IIVoiceRH \BBGICxGHMusicRH
        >>
        \new Lyrics  = IILyricsA
        \new Lyrics = IILyricsAAlt
        \new Lyrics  = IILyricsB
        \new Lyrics = IILyricsBAlt
        \new Lyrics  = IILyricsC
        \new Lyrics = IILyricsCAlt
        \new Lyrics  = IILyricsD
        \new Lyrics = IILyricsDAlt
        \context Staff = IIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = IIVoiceLH \BBGICxGHMusicLH
        >>
        \context Lyrics = IILyricsA \lyricsto IIVoiceLyrics \IIVerseA
        \context Lyrics = IILyricsAAlt \lyricsto IIVoiceLyrics \IIVerseAAlt
        \context Lyrics = IILyricsB \lyricsto IIVoiceLyrics \IIVerseB
        \context Lyrics = IILyricsBAlt \lyricsto IIVoiceLyrics \IIVerseBAlt
        \context Lyrics = IILyricsC \lyricsto IIVoiceLyrics \IIVerseC
        \context Lyrics = IILyricsCAlt \lyricsto IIVoiceLyrics \IIVerseCAlt
        \context Lyrics = IILyricsD \lyricsto IIVoiceLyrics \IIVerseD
        \context Lyrics = IILyricsDAlt \lyricsto IIVoiceLyrics \IIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {100}
        \fontsize #6 \center-align \line {Het u sondaars plek}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {139}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZZStaffGroup <<
        \context Staff = AZZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZZVoiceLyrics \BBGIDxACIMusicLyrics
            \context Voice = AZZVoiceRH \BBGIDxACIMusicRH
        >>
        \new Lyrics  = AZZLyricsA
        \new Lyrics = AZZLyricsAAlt
        \new Lyrics  = AZZLyricsB
        \new Lyrics = AZZLyricsBAlt
        \new Lyrics  = AZZLyricsC
        \new Lyrics = AZZLyricsCAlt
        \new Lyrics  = AZZLyricsD
        \new Lyrics = AZZLyricsDAlt
        \context Staff = AZZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZZVoiceLH \BBGIDxACIMusicLH
        >>
        \context Lyrics = AZZLyricsA \lyricsto AZZVoiceLyrics \AZZVerseA
        \context Lyrics = AZZLyricsAAlt \lyricsto AZZVoiceLyrics \AZZVerseAAlt
        \context Lyrics = AZZLyricsB \lyricsto AZZVoiceLyrics \AZZVerseB
        \context Lyrics = AZZLyricsBAlt \lyricsto AZZVoiceLyrics \AZZVerseBAlt
        \context Lyrics = AZZLyricsC \lyricsto AZZVoiceLyrics \AZZVerseC
        \context Lyrics = AZZLyricsCAlt \lyricsto AZZVoiceLyrics \AZZVerseCAlt
        \context Lyrics = AZZLyricsD \lyricsto AZZVoiceLyrics \AZZVerseD
        \context Lyrics = AZZLyricsDAlt \lyricsto AZZVoiceLyrics \AZZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {101}
        \fontsize #6 \center-align \line {Hier in U Naam, O Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {172}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZAStaffGroup <<
        \context Staff = AZAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZAVoiceLyrics \BBGIExAGBMusicLyrics
            \context Voice = AZAVoiceRH \BBGIExAGBMusicRH
        >>
        \new Lyrics  = AZALyricsA
        \new Lyrics = AZALyricsAAlt
        \new Lyrics  = AZALyricsB
        \new Lyrics = AZALyricsBAlt
        \new Lyrics  = AZALyricsC
        \new Lyrics = AZALyricsCAlt
        \new Lyrics  = AZALyricsD
        \new Lyrics = AZALyricsDAlt
        \context Staff = AZAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZAVoiceLH \BBGIExAGBMusicLH
        >>
        \context Lyrics = AZALyricsA \lyricsto AZAVoiceLyrics \AZAVerseA
        \context Lyrics = AZALyricsAAlt \lyricsto AZAVoiceLyrics \AZAVerseAAlt
        \context Lyrics = AZALyricsB \lyricsto AZAVoiceLyrics \AZAVerseB
        \context Lyrics = AZALyricsBAlt \lyricsto AZAVoiceLyrics \AZAVerseBAlt
        \context Lyrics = AZALyricsC \lyricsto AZAVoiceLyrics \AZAVerseC
        \context Lyrics = AZALyricsCAlt \lyricsto AZAVoiceLyrics \AZAVerseCAlt
        \context Lyrics = AZALyricsD \lyricsto AZAVoiceLyrics \AZAVerseD
        \context Lyrics = AZALyricsDAlt \lyricsto AZAVoiceLyrics \AZAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {102}
        \fontsize #6 \center-align \line {Hier ootmoedig voor U}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {194}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZBStaffGroup <<
        \context Staff = AZBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZBVoiceLyrics \BBGIFxAIDMusicLyrics
            \context Voice = AZBVoiceRH \BBGIFxAIDMusicRH
        >>
        \new Lyrics  = AZBLyricsA
        \new Lyrics = AZBLyricsAAlt
        \new Lyrics  = AZBLyricsB
        \new Lyrics = AZBLyricsBAlt
        \new Lyrics  = AZBLyricsC
        \new Lyrics = AZBLyricsCAlt
        \context Staff = AZBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZBVoiceLH \BBGIFxAIDMusicLH
        >>
        \context Lyrics = AZBLyricsA \lyricsto AZBVoiceLyrics \AZBVerseA
        \context Lyrics = AZBLyricsAAlt \lyricsto AZBVoiceLyrics \AZBVerseAAlt
        \context Lyrics = AZBLyricsB \lyricsto AZBVoiceLyrics \AZBVerseB
        \context Lyrics = AZBLyricsBAlt \lyricsto AZBVoiceLyrics \AZBVerseBAlt
        \context Lyrics = AZBLyricsC \lyricsto AZBVoiceLyrics \AZBVerseC
        \context Lyrics = AZBLyricsCAlt \lyricsto AZBVoiceLyrics \AZBVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {103}
        \fontsize #6 \center-align \line {Hoe kan ek ooit vergeet}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {284}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZCStaffGroup <<
        \context Staff = AZCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZCVoiceLyrics \BBGIGxBHDMusicLyrics
            \context Voice = AZCVoiceRH \BBGIGxBHDMusicRH
        >>
        \new Lyrics  = AZCLyricsA
        \new Lyrics = AZCLyricsAAlt
        \new Lyrics  = AZCLyricsB
        \new Lyrics = AZCLyricsBAlt
        \new Lyrics  = AZCLyricsC
        \new Lyrics = AZCLyricsCAlt
        \new Lyrics  = AZCLyricsD
        \new Lyrics = AZCLyricsDAlt
        \context Staff = AZCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZCVoiceLH \BBGIGxBHDMusicLH
        >>
        \context Lyrics = AZCLyricsA \lyricsto AZCVoiceLyrics \AZCVerseA
        \context Lyrics = AZCLyricsAAlt \lyricsto AZCVoiceLyrics \AZCVerseAAlt
        \context Lyrics = AZCLyricsB \lyricsto AZCVoiceLyrics \AZCVerseB
        \context Lyrics = AZCLyricsBAlt \lyricsto AZCVoiceLyrics \AZCVerseBAlt
        \context Lyrics = AZCLyricsC \lyricsto AZCVoiceLyrics \AZCVerseC
        \context Lyrics = AZCLyricsCAlt \lyricsto AZCVoiceLyrics \AZCVerseCAlt
        \context Lyrics = AZCLyricsD \lyricsto AZCVoiceLyrics \AZCVerseD
        \context Lyrics = AZCLyricsDAlt \lyricsto AZCVoiceLyrics \AZCVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {104}
        \fontsize #6 \center-align \line {Hoe kosbaar is die Woord}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {249}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZDStaffGroup <<
        \context Staff = AZDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZDVoiceLyrics \BBGIHxBDHMusicLyrics
            \context Voice = AZDVoiceRH \BBGIHxBDHMusicRH
        >>
        \new Lyrics  = AZDLyricsA
        \new Lyrics = AZDLyricsAAlt
        \new Lyrics  = AZDLyricsB
        \new Lyrics = AZDLyricsBAlt
        \new Lyrics  = AZDLyricsC
        \new Lyrics = AZDLyricsCAlt
        \new Lyrics  = AZDLyricsD
        \new Lyrics = AZDLyricsDAlt
        \context Staff = AZDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZDVoiceLH \BBGIHxBDHMusicLH
        >>
        \context Lyrics = AZDLyricsA \lyricsto AZDVoiceLyrics \AZDVerseA
        \context Lyrics = AZDLyricsAAlt \lyricsto AZDVoiceLyrics \AZDVerseAAlt
        \context Lyrics = AZDLyricsB \lyricsto AZDVoiceLyrics \AZDVerseB
        \context Lyrics = AZDLyricsBAlt \lyricsto AZDVoiceLyrics \AZDVerseBAlt
        \context Lyrics = AZDLyricsC \lyricsto AZDVoiceLyrics \AZDVerseC
        \context Lyrics = AZDLyricsCAlt \lyricsto AZDVoiceLyrics \AZDVerseCAlt
        \context Lyrics = AZDLyricsD \lyricsto AZDVoiceLyrics \AZDVerseD
        \context Lyrics = AZDLyricsDAlt \lyricsto AZDVoiceLyrics \AZDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {105}
        \fontsize #6 \center-align \line {Hoe lieflik groen}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {309}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZEStaffGroup <<
        \context Staff = AZEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZEVoiceLyrics \BBGIIxCZIMusicLyrics
            \context Voice = AZEVoiceRH \BBGIIxCZIMusicRH
        >>
        \new Lyrics  = AZELyricsA
        \new Lyrics = AZELyricsAAlt
        \new Lyrics  = AZELyricsB
        \new Lyrics = AZELyricsBAlt
        \new Lyrics  = AZELyricsC
        \new Lyrics = AZELyricsCAlt
        \new Lyrics  = AZELyricsD
        \new Lyrics = AZELyricsDAlt
        \context Staff = AZEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZEVoiceLH \BBGIIxCZIMusicLH
        >>
        \context Lyrics = AZELyricsA \lyricsto AZEVoiceLyrics \AZEVerseA
        \context Lyrics = AZELyricsAAlt \lyricsto AZEVoiceLyrics \AZEVerseAAlt
        \context Lyrics = AZELyricsB \lyricsto AZEVoiceLyrics \AZEVerseB
        \context Lyrics = AZELyricsBAlt \lyricsto AZEVoiceLyrics \AZEVerseBAlt
        \context Lyrics = AZELyricsC \lyricsto AZEVoiceLyrics \AZEVerseC
        \context Lyrics = AZELyricsCAlt \lyricsto AZEVoiceLyrics \AZEVerseCAlt
        \context Lyrics = AZELyricsD \lyricsto AZEVoiceLyrics \AZEVerseD
        \context Lyrics = AZELyricsDAlt \lyricsto AZEVoiceLyrics \AZEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {106}
        \fontsize #6 \center-align \line {Hoe soet te weet}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {280}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZFStaffGroup <<
        \context Staff = AZFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZFVoiceLyrics \BBHZZxBHZMusicLyrics
            \context Voice = AZFVoiceRH \BBHZZxBHZMusicRH
        >>
        \new Lyrics  = AZFLyricsA
        \new Lyrics = AZFLyricsAAlt
        \new Lyrics  = AZFLyricsB
        \new Lyrics = AZFLyricsBAlt
        \new Lyrics  = AZFLyricsC
        \new Lyrics = AZFLyricsCAlt
        \new Lyrics  = AZFLyricsD
        \new Lyrics = AZFLyricsDAlt
        \context Staff = AZFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZFVoiceLH \BBHZZxBHZMusicLH
        >>
        \context Lyrics = AZFLyricsA \lyricsto AZFVoiceLyrics \AZFVerseA
        \context Lyrics = AZFLyricsAAlt \lyricsto AZFVoiceLyrics \AZFVerseAAlt
        \context Lyrics = AZFLyricsB \lyricsto AZFVoiceLyrics \AZFVerseB
        \context Lyrics = AZFLyricsBAlt \lyricsto AZFVoiceLyrics \AZFVerseBAlt
        \context Lyrics = AZFLyricsC \lyricsto AZFVoiceLyrics \AZFVerseC
        \context Lyrics = AZFLyricsCAlt \lyricsto AZFVoiceLyrics \AZFVerseCAlt
        \context Lyrics = AZFLyricsD \lyricsto AZFVoiceLyrics \AZFVerseD
        \context Lyrics = AZFLyricsDAlt \lyricsto AZFVoiceLyrics \AZFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {107}
        \fontsize #6 \center-align \line {Hoor die stem van Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {127}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZGStaffGroup <<
        \context Staff = AZGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZGVoiceLyrics \BBHZAxABGMusicLyrics
            \context Voice = AZGVoiceRH \BBHZAxABGMusicRH
        >>
        \new Lyrics  = AZGLyricsA
        \new Lyrics = AZGLyricsAAlt
        \new Lyrics  = AZGLyricsB
        \new Lyrics = AZGLyricsBAlt
        \new Lyrics  = AZGLyricsC
        \new Lyrics = AZGLyricsCAlt
        \new Lyrics  = AZGLyricsD
        \new Lyrics = AZGLyricsDAlt
        \context Staff = AZGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZGVoiceLH \BBHZAxABGMusicLH
        >>
        \new Lyrics = AZGLyricsBelow
        \context Lyrics = AZGLyricsA \lyricsto AZGVoiceLyrics \AZGVerseA
        \context Lyrics = AZGLyricsAAlt \lyricsto AZGVoiceLyrics \AZGVerseAAlt
        \context Lyrics = AZGLyricsB \lyricsto AZGVoiceLyrics \AZGVerseB
        \context Lyrics = AZGLyricsBAlt \lyricsto AZGVoiceLyrics \AZGVerseBAlt
        \context Lyrics = AZGLyricsC \lyricsto AZGVoiceLyrics \AZGVerseC
        \context Lyrics = AZGLyricsCAlt \lyricsto AZGVoiceLyrics \AZGVerseCAlt
        \context Lyrics = AZGLyricsD \lyricsto AZGVoiceLyrics \AZGVerseD
        \context Lyrics = AZGLyricsDAlt \lyricsto AZGVoiceLyrics \AZGVerseDAlt
        \context Lyrics = AZGLyricsBelow \lyricsto AZGVoiceLyrics \AZGBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {108}
        \fontsize #6 \center-align \line {Hou U my hand}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {36}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZHStaffGroup <<
        \context Staff = AZHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZHVoiceLyrics \BBHZBxCFMusicLyrics
            \context Voice = AZHVoiceRH \BBHZBxCFMusicRH
        >>
        \new Lyrics  = AZHLyricsA
        \new Lyrics = AZHLyricsAAlt
        \new Lyrics  = AZHLyricsB
        \new Lyrics = AZHLyricsBAlt
        \new Lyrics  = AZHLyricsC
        \new Lyrics = AZHLyricsCAlt
        \new Lyrics  = AZHLyricsD
        \new Lyrics = AZHLyricsDAlt
        \context Staff = AZHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZHVoiceLH \BBHZBxCFMusicLH
        >>
        \context Lyrics = AZHLyricsA \lyricsto AZHVoiceLyrics \AZHVerseA
        \context Lyrics = AZHLyricsAAlt \lyricsto AZHVoiceLyrics \AZHVerseAAlt
        \context Lyrics = AZHLyricsB \lyricsto AZHVoiceLyrics \AZHVerseB
        \context Lyrics = AZHLyricsBAlt \lyricsto AZHVoiceLyrics \AZHVerseBAlt
        \context Lyrics = AZHLyricsC \lyricsto AZHVoiceLyrics \AZHVerseC
        \context Lyrics = AZHLyricsCAlt \lyricsto AZHVoiceLyrics \AZHVerseCAlt
        \context Lyrics = AZHLyricsD \lyricsto AZHVoiceLyrics \AZHVerseD
        \context Lyrics = AZHLyricsDAlt \lyricsto AZHVoiceLyrics \AZHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {109}
        \fontsize #6 \center-align \line {Hy roep u nou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {39}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AZIStaffGroup <<
        \context Staff = AZIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AZIVoiceLyrics \BBHZCxCIMusicLyrics
            \context Voice = AZIVoiceRH \BBHZCxCIMusicRH
        >>
        \new Lyrics  = AZILyricsA
        \new Lyrics = AZILyricsAAlt
        \new Lyrics  = AZILyricsB
        \new Lyrics = AZILyricsBAlt
        \new Lyrics  = AZILyricsC
        \new Lyrics = AZILyricsCAlt
        \new Lyrics  = AZILyricsD
        \new Lyrics = AZILyricsDAlt
        \context Staff = AZIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AZIVoiceLH \BBHZCxCIMusicLH
        >>
        \context Lyrics = AZILyricsA \lyricsto AZIVoiceLyrics \AZIVerseA
        \context Lyrics = AZILyricsAAlt \lyricsto AZIVoiceLyrics \AZIVerseAAlt
        \context Lyrics = AZILyricsB \lyricsto AZIVoiceLyrics \AZIVerseB
        \context Lyrics = AZILyricsBAlt \lyricsto AZIVoiceLyrics \AZIVerseBAlt
        \context Lyrics = AZILyricsC \lyricsto AZIVoiceLyrics \AZIVerseC
        \context Lyrics = AZILyricsCAlt \lyricsto AZIVoiceLyrics \AZIVerseCAlt
        \context Lyrics = AZILyricsD \lyricsto AZIVoiceLyrics \AZIVerseD
        \context Lyrics = AZILyricsDAlt \lyricsto AZIVoiceLyrics \AZIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {110}
        \fontsize #6 \center-align \line {Hy wag op u}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {306}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAZStaffGroup <<
        \context Staff = AAZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAZVoiceLyrics \BBHZDxCZFMusicLyrics
            \context Voice = AAZVoiceRH \BBHZDxCZFMusicRH
        >>
        \new Lyrics  = AAZLyricsA
        \new Lyrics = AAZLyricsAAlt
        \new Lyrics  = AAZLyricsB
        \new Lyrics = AAZLyricsBAlt
        \new Lyrics  = AAZLyricsC
        \new Lyrics = AAZLyricsCAlt
        \new Lyrics  = AAZLyricsD
        \new Lyrics = AAZLyricsDAlt
        \context Staff = AAZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAZVoiceLH \BBHZDxCZFMusicLH
        >>
        \context Lyrics = AAZLyricsA \lyricsto AAZVoiceLyrics \AAZVerseA
        \context Lyrics = AAZLyricsAAlt \lyricsto AAZVoiceLyrics \AAZVerseAAlt
        \context Lyrics = AAZLyricsB \lyricsto AAZVoiceLyrics \AAZVerseB
        \context Lyrics = AAZLyricsBAlt \lyricsto AAZVoiceLyrics \AAZVerseBAlt
        \context Lyrics = AAZLyricsC \lyricsto AAZVoiceLyrics \AAZVerseC
        \context Lyrics = AAZLyricsCAlt \lyricsto AAZVoiceLyrics \AAZVerseCAlt
        \context Lyrics = AAZLyricsD \lyricsto AAZVoiceLyrics \AAZVerseD
        \context Lyrics = AAZLyricsDAlt \lyricsto AAZVoiceLyrics \AAZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {111}
        \fontsize #6 \center-align \line {In Christus is geen oos}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {335}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAAStaffGroup <<
        \context Staff = AAAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAAVoiceLyrics \BBHZExCCEMusicLyrics
            \context Voice = AAAVoiceRH \BBHZExCCEMusicRH
        >>
        \new Lyrics  = AAALyricsA
        \new Lyrics = AAALyricsAAlt
        \new Lyrics  = AAALyricsB
        \new Lyrics = AAALyricsBAlt
        \new Lyrics  = AAALyricsC
        \new Lyrics = AAALyricsCAlt
        \new Lyrics  = AAALyricsD
        \new Lyrics = AAALyricsDAlt
        \context Staff = AAAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAAVoiceLH \BBHZExCCEMusicLH
        >>
        \context Lyrics = AAALyricsA \lyricsto AAAVoiceLyrics \AAAVerseA
        \context Lyrics = AAALyricsAAlt \lyricsto AAAVoiceLyrics \AAAVerseAAlt
        \context Lyrics = AAALyricsB \lyricsto AAAVoiceLyrics \AAAVerseB
        \context Lyrics = AAALyricsBAlt \lyricsto AAAVoiceLyrics \AAAVerseBAlt
        \context Lyrics = AAALyricsC \lyricsto AAAVoiceLyrics \AAAVerseC
        \context Lyrics = AAALyricsCAlt \lyricsto AAAVoiceLyrics \AAAVerseCAlt
        \context Lyrics = AAALyricsD \lyricsto AAAVoiceLyrics \AAAVerseD
        \context Lyrics = AAALyricsDAlt \lyricsto AAAVoiceLyrics \AAAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {112}
        \fontsize #6 \center-align \line {In die naam van Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {174}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AABStaffGroup <<
        \context Staff = AABStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AABVoiceLyrics \BBHZFxHEMusicLyrics
            \context Voice = AABVoiceRH \BBHZFxHEMusicRH
        >>
        \new Lyrics  = AABLyricsA
        \new Lyrics = AABLyricsAAlt
        \new Lyrics  = AABLyricsB
        \new Lyrics = AABLyricsBAlt
        \new Lyrics  = AABLyricsC
        \new Lyrics = AABLyricsCAlt
        \new Lyrics  = AABLyricsD
        \new Lyrics = AABLyricsDAlt
        \context Staff = AABStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AABVoiceLH \BBHZFxHEMusicLH
        >>
        \context Lyrics = AABLyricsA \lyricsto AABVoiceLyrics \AABVerseA
        \context Lyrics = AABLyricsAAlt \lyricsto AABVoiceLyrics \AABVerseAAlt
        \context Lyrics = AABLyricsB \lyricsto AABVoiceLyrics \AABVerseB
        \context Lyrics = AABLyricsBAlt \lyricsto AABVoiceLyrics \AABVerseBAlt
        \context Lyrics = AABLyricsC \lyricsto AABVoiceLyrics \AABVerseC
        \context Lyrics = AABLyricsCAlt \lyricsto AABVoiceLyrics \AABVerseCAlt
        \context Lyrics = AABLyricsD \lyricsto AABVoiceLyrics \AABVerseD
        \context Lyrics = AABLyricsDAlt \lyricsto AABVoiceLyrics \AABVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {113}
        \fontsize #6 \center-align \line {In die skadu van die Hoogste}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {341}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AACStaffGroup <<
        \context Staff = AACStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AACVoiceLyrics \BBHZGxCDAMusicLyrics
            \context Voice = AACVoiceRH \BBHZGxCDAMusicRH
        >>
        \new Lyrics  = AACLyricsA
        \new Lyrics = AACLyricsAAlt
        \new Lyrics  = AACLyricsB
        \new Lyrics = AACLyricsBAlt
        \new Lyrics  = AACLyricsC
        \new Lyrics = AACLyricsCAlt
        \context Staff = AACStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AACVoiceLH \BBHZGxCDAMusicLH
        >>
        \context Lyrics = AACLyricsA \lyricsto AACVoiceLyrics \AACVerseA
        \context Lyrics = AACLyricsAAlt \lyricsto AACVoiceLyrics \AACVerseAAlt
        \context Lyrics = AACLyricsB \lyricsto AACVoiceLyrics \AACVerseB
        \context Lyrics = AACLyricsBAlt \lyricsto AACVoiceLyrics \AACVerseBAlt
        \context Lyrics = AACLyricsC \lyricsto AACVoiceLyrics \AACVerseC
        \context Lyrics = AACLyricsCAlt \lyricsto AACVoiceLyrics \AACVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {114}
        \fontsize #6 \center-align \line {In die wêreld hier}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {83}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AADStaffGroup <<
        \context Staff = AADStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AADVoiceLyrics \BBHZHxHCMusicLyrics
            \context Voice = AADVoiceRH \BBHZHxHCMusicRH
        >>
        \new Lyrics  = AADLyricsA
        \new Lyrics = AADLyricsAAlt
        \new Lyrics  = AADLyricsB
        \new Lyrics = AADLyricsBAlt
        \new Lyrics  = AADLyricsC
        \new Lyrics = AADLyricsCAlt
        \context Staff = AADStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AADVoiceLH \BBHZHxHCMusicLH
        >>
        \new Lyrics = AADLyricsBelow
        \context Lyrics = AADLyricsA \lyricsto AADVoiceLyrics \AADVerseA
        \context Lyrics = AADLyricsAAlt \lyricsto AADVoiceLyrics \AADVerseAAlt
        \context Lyrics = AADLyricsB \lyricsto AADVoiceLyrics \AADVerseB
        \context Lyrics = AADLyricsBAlt \lyricsto AADVoiceLyrics \AADVerseBAlt
        \context Lyrics = AADLyricsC \lyricsto AADVoiceLyrics \AADVerseC
        \context Lyrics = AADLyricsCAlt \lyricsto AADVoiceLyrics \AADVerseCAlt
        \context Lyrics = AADLyricsBelow \lyricsto AADVoiceLyrics \AADBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {115}
        \fontsize #6 \center-align \line {In droefheid en in nood}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {13}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAEStaffGroup <<
        \context Staff = AAEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAEVoiceLyrics \BBHZIxACMusicLyrics
            \context Voice = AAEVoiceRH \BBHZIxACMusicRH
        >>
        \new Lyrics  = AAELyricsA
        \new Lyrics = AAELyricsAAlt
        \new Lyrics  = AAELyricsB
        \new Lyrics = AAELyricsBAlt
        \new Lyrics  = AAELyricsC
        \new Lyrics = AAELyricsCAlt
        \new Lyrics  = AAELyricsD
        \new Lyrics = AAELyricsDAlt
        \context Staff = AAEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAEVoiceLH \BBHZIxACMusicLH
        >>
        \context Lyrics = AAELyricsA \lyricsto AAEVoiceLyrics \AAEVerseA
        \context Lyrics = AAELyricsAAlt \lyricsto AAEVoiceLyrics \AAEVerseAAlt
        \context Lyrics = AAELyricsB \lyricsto AAEVoiceLyrics \AAEVerseB
        \context Lyrics = AAELyricsBAlt \lyricsto AAEVoiceLyrics \AAEVerseBAlt
        \context Lyrics = AAELyricsC \lyricsto AAEVoiceLyrics \AAEVerseC
        \context Lyrics = AAELyricsCAlt \lyricsto AAEVoiceLyrics \AAEVerseCAlt
        \context Lyrics = AAELyricsD \lyricsto AAEVoiceLyrics \AAEVerseD
        \context Lyrics = AAELyricsDAlt \lyricsto AAEVoiceLyrics \AAEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {116}
        \fontsize #6 \center-align \line {In 'n verre land}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {117}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAFStaffGroup <<
        \context Staff = AAFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAFVoiceLyrics \BBHAZxAAGMusicLyrics
            \context Voice = AAFVoiceRH \BBHAZxAAGMusicRH
        >>
        \new Lyrics  = AAFLyricsA
        \new Lyrics = AAFLyricsAAlt
        \new Lyrics  = AAFLyricsB
        \new Lyrics = AAFLyricsBAlt
        \new Lyrics  = AAFLyricsC
        \new Lyrics = AAFLyricsCAlt
        \context Staff = AAFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAFVoiceLH \BBHAZxAAGMusicLH
        >>
        \new Lyrics = AAFLyricsBelow
        \context Lyrics = AAFLyricsA \lyricsto AAFVoiceLyrics \AAFVerseA
        \context Lyrics = AAFLyricsAAlt \lyricsto AAFVoiceLyrics \AAFVerseAAlt
        \context Lyrics = AAFLyricsB \lyricsto AAFVoiceLyrics \AAFVerseB
        \context Lyrics = AAFLyricsBAlt \lyricsto AAFVoiceLyrics \AAFVerseBAlt
        \context Lyrics = AAFLyricsC \lyricsto AAFVoiceLyrics \AAFVerseC
        \context Lyrics = AAFLyricsCAlt \lyricsto AAFVoiceLyrics \AAFVerseCAlt
        \context Lyrics = AAFLyricsBelow \lyricsto AAFVoiceLyrics \AAFBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {117}
        \fontsize #6 \center-align \line {In ootmoed voor U troon}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {177}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAGStaffGroup <<
        \context Staff = AAGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAGVoiceLyrics \BBHAAxAGGMusicLyrics
            \context Voice = AAGVoiceRH \BBHAAxAGGMusicRH
        >>
        \new Lyrics  = AAGLyricsA
        \new Lyrics = AAGLyricsAAlt
        \new Lyrics  = AAGLyricsB
        \new Lyrics = AAGLyricsBAlt
        \new Lyrics  = AAGLyricsC
        \new Lyrics = AAGLyricsCAlt
        \new Lyrics  = AAGLyricsD
        \new Lyrics = AAGLyricsDAlt
        \context Staff = AAGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAGVoiceLH \BBHAAxAGGMusicLH
        >>
        \context Lyrics = AAGLyricsA \lyricsto AAGVoiceLyrics \AAGVerseA
        \context Lyrics = AAGLyricsAAlt \lyricsto AAGVoiceLyrics \AAGVerseAAlt
        \context Lyrics = AAGLyricsB \lyricsto AAGVoiceLyrics \AAGVerseB
        \context Lyrics = AAGLyricsBAlt \lyricsto AAGVoiceLyrics \AAGVerseBAlt
        \context Lyrics = AAGLyricsC \lyricsto AAGVoiceLyrics \AAGVerseC
        \context Lyrics = AAGLyricsCAlt \lyricsto AAGVoiceLyrics \AAGVerseCAlt
        \context Lyrics = AAGLyricsD \lyricsto AAGVoiceLyrics \AAGVerseD
        \context Lyrics = AAGLyricsDAlt \lyricsto AAGVoiceLyrics \AAGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {118}
        \fontsize #6 \center-align \line {Is daar iemand}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {47}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAHStaffGroup <<
        \context Staff = AAHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAHVoiceLyrics \BBHABxDGMusicLyrics
            \context Voice = AAHVoiceRH \BBHABxDGMusicRH
        >>
        \new Lyrics  = AAHLyricsA
        \new Lyrics = AAHLyricsAAlt
        \new Lyrics  = AAHLyricsB
        \new Lyrics = AAHLyricsBAlt
        \new Lyrics  = AAHLyricsC
        \new Lyrics = AAHLyricsCAlt
        \context Staff = AAHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAHVoiceLH \BBHABxDGMusicLH
        >>
        \context Lyrics = AAHLyricsA \lyricsto AAHVoiceLyrics \AAHVerseA
        \context Lyrics = AAHLyricsAAlt \lyricsto AAHVoiceLyrics \AAHVerseAAlt
        \context Lyrics = AAHLyricsB \lyricsto AAHVoiceLyrics \AAHVerseB
        \context Lyrics = AAHLyricsBAlt \lyricsto AAHVoiceLyrics \AAHVerseBAlt
        \context Lyrics = AAHLyricsC \lyricsto AAHVoiceLyrics \AAHVerseC
        \context Lyrics = AAHLyricsCAlt \lyricsto AAHVoiceLyrics \AAHVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {119}
        \fontsize #6 \center-align \line {Is daar 'n hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {86}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AAIStaffGroup <<
        \context Staff = AAIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AAIVoiceLyrics \BBHACxHFMusicLyrics
            \context Voice = AAIVoiceRH \BBHACxHFMusicRH
        >>
        \new Lyrics  = AAILyricsA
        \new Lyrics = AAILyricsAAlt
        \new Lyrics  = AAILyricsB
        \new Lyrics = AAILyricsBAlt
        \new Lyrics  = AAILyricsC
        \new Lyrics = AAILyricsCAlt
        \new Lyrics  = AAILyricsD
        \new Lyrics = AAILyricsDAlt
        \context Staff = AAIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AAIVoiceLH \BBHACxHFMusicLH
        >>
        \context Lyrics = AAILyricsA \lyricsto AAIVoiceLyrics \AAIVerseA
        \context Lyrics = AAILyricsAAlt \lyricsto AAIVoiceLyrics \AAIVerseAAlt
        \context Lyrics = AAILyricsB \lyricsto AAIVoiceLyrics \AAIVerseB
        \context Lyrics = AAILyricsBAlt \lyricsto AAIVoiceLyrics \AAIVerseBAlt
        \context Lyrics = AAILyricsC \lyricsto AAIVoiceLyrics \AAIVerseC
        \context Lyrics = AAILyricsCAlt \lyricsto AAIVoiceLyrics \AAIVerseCAlt
        \context Lyrics = AAILyricsD \lyricsto AAIVoiceLyrics \AAIVerseD
        \context Lyrics = AAILyricsDAlt \lyricsto AAIVoiceLyrics \AAIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {120}
        \fontsize #6 \center-align \line {Ja my keuse is vir ewig}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {132}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABZStaffGroup <<
        \context Staff = ABZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABZVoiceLyrics \BBHADxACBMusicLyrics
            \context Voice = ABZVoiceRH \BBHADxACBMusicRH
        >>
        \new Lyrics  = ABZLyricsA
        \new Lyrics = ABZLyricsAAlt
        \new Lyrics  = ABZLyricsB
        \new Lyrics = ABZLyricsBAlt
        \new Lyrics  = ABZLyricsC
        \new Lyrics = ABZLyricsCAlt
        \context Staff = ABZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABZVoiceLH \BBHADxACBMusicLH
        >>
        \new Lyrics = ABZLyricsBelow
        \context Lyrics = ABZLyricsA \lyricsto ABZVoiceLyrics \ABZVerseA
        \context Lyrics = ABZLyricsAAlt \lyricsto ABZVoiceLyrics \ABZVerseAAlt
        \context Lyrics = ABZLyricsB \lyricsto ABZVoiceLyrics \ABZVerseB
        \context Lyrics = ABZLyricsBAlt \lyricsto ABZVoiceLyrics \ABZVerseBAlt
        \context Lyrics = ABZLyricsC \lyricsto ABZVoiceLyrics \ABZVerseC
        \context Lyrics = ABZLyricsCAlt \lyricsto ABZVoiceLyrics \ABZVerseCAlt
        \context Lyrics = ABZLyricsBelow \lyricsto ABZVoiceLyrics \ABZBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {121}
        \fontsize #6 \center-align \line {Jesus is hier slegs}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {9}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABAStaffGroup <<
        \context Staff = ABAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABAVoiceLyrics \BBHAExIMusicLyrics
            \context Voice = ABAVoiceRH \BBHAExIMusicRH
        >>
        \new Lyrics  = ABALyricsA
        \new Lyrics = ABALyricsAAlt
        \new Lyrics  = ABALyricsB
        \new Lyrics = ABALyricsBAlt
        \new Lyrics  = ABALyricsC
        \new Lyrics = ABALyricsCAlt
        \new Lyrics  = ABALyricsD
        \new Lyrics = ABALyricsDAlt
        \context Staff = ABAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABAVoiceLH \BBHAExIMusicLH
        >>
        \context Lyrics = ABALyricsA \lyricsto ABAVoiceLyrics \ABAVerseA
        \context Lyrics = ABALyricsAAlt \lyricsto ABAVoiceLyrics \ABAVerseAAlt
        \context Lyrics = ABALyricsB \lyricsto ABAVoiceLyrics \ABAVerseB
        \context Lyrics = ABALyricsBAlt \lyricsto ABAVoiceLyrics \ABAVerseBAlt
        \context Lyrics = ABALyricsC \lyricsto ABAVoiceLyrics \ABAVerseC
        \context Lyrics = ABALyricsCAlt \lyricsto ABAVoiceLyrics \ABAVerseCAlt
        \context Lyrics = ABALyricsD \lyricsto ABAVoiceLyrics \ABAVerseD
        \context Lyrics = ABALyricsDAlt \lyricsto ABAVoiceLyrics \ABAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {122}
        \fontsize #6 \center-align \line {Jesus, nou neem ek}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {25}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABBStaffGroup <<
        \context Staff = ABBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABBVoiceLyrics \BBHAFxBEMusicLyrics
            \context Voice = ABBVoiceRH \BBHAFxBEMusicRH
        >>
        \new Lyrics  = ABBLyricsA
        \new Lyrics = ABBLyricsAAlt
        \new Lyrics  = ABBLyricsB
        \new Lyrics = ABBLyricsBAlt
        \new Lyrics  = ABBLyricsC
        \new Lyrics = ABBLyricsCAlt
        \new Lyrics  = ABBLyricsD
        \new Lyrics = ABBLyricsDAlt
        \context Staff = ABBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABBVoiceLH \BBHAFxBEMusicLH
        >>
        \context Lyrics = ABBLyricsA \lyricsto ABBVoiceLyrics \ABBVerseA
        \context Lyrics = ABBLyricsAAlt \lyricsto ABBVoiceLyrics \ABBVerseAAlt
        \context Lyrics = ABBLyricsB \lyricsto ABBVoiceLyrics \ABBVerseB
        \context Lyrics = ABBLyricsBAlt \lyricsto ABBVoiceLyrics \ABBVerseBAlt
        \context Lyrics = ABBLyricsC \lyricsto ABBVoiceLyrics \ABBVerseC
        \context Lyrics = ABBLyricsCAlt \lyricsto ABBVoiceLyrics \ABBVerseCAlt
        \context Lyrics = ABBLyricsD \lyricsto ABBVoiceLyrics \ABBVerseD
        \context Lyrics = ABBLyricsDAlt \lyricsto ABBVoiceLyrics \ABBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {123}
        \fontsize #6 \center-align \line {Jesus roep my}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {334}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABCStaffGroup <<
        \context Staff = ABCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABCVoiceLyrics \BBHAGxCCDMusicLyrics
            \context Voice = ABCVoiceRH \BBHAGxCCDMusicRH
        >>
        \new Lyrics  = ABCLyricsA
        \new Lyrics = ABCLyricsAAlt
        \new Lyrics  = ABCLyricsB
        \new Lyrics = ABCLyricsBAlt
        \new Lyrics  = ABCLyricsC
        \new Lyrics = ABCLyricsCAlt
        \new Lyrics  = ABCLyricsD
        \new Lyrics = ABCLyricsDAlt
        \new Lyrics  = ABCLyricsE
        \new Lyrics = ABCLyricsEAlt
        \context Staff = ABCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABCVoiceLH \BBHAGxCCDMusicLH
        >>
        \context Lyrics = ABCLyricsA \lyricsto ABCVoiceLyrics \ABCVerseA
        \context Lyrics = ABCLyricsAAlt \lyricsto ABCVoiceLyrics \ABCVerseAAlt
        \context Lyrics = ABCLyricsB \lyricsto ABCVoiceLyrics \ABCVerseB
        \context Lyrics = ABCLyricsBAlt \lyricsto ABCVoiceLyrics \ABCVerseBAlt
        \context Lyrics = ABCLyricsC \lyricsto ABCVoiceLyrics \ABCVerseC
        \context Lyrics = ABCLyricsCAlt \lyricsto ABCVoiceLyrics \ABCVerseCAlt
        \context Lyrics = ABCLyricsD \lyricsto ABCVoiceLyrics \ABCVerseD
        \context Lyrics = ABCLyricsDAlt \lyricsto ABCVoiceLyrics \ABCVerseDAlt
        \context Lyrics = ABCLyricsE \lyricsto ABCVoiceLyrics \ABCVerseE
        \context Lyrics = ABCLyricsEAlt \lyricsto ABCVoiceLyrics \ABCVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {124}
        \fontsize #6 \center-align \line {Jesus U geseënde voetspoor}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {81}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABDStaffGroup <<
        \context Staff = ABDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABDVoiceLyrics \BBHAHxHAMusicLyrics
            \context Voice = ABDVoiceRH \BBHAHxHAMusicRH
        >>
        \new Lyrics  = ABDLyricsA
        \new Lyrics = ABDLyricsAAlt
        \new Lyrics  = ABDLyricsB
        \new Lyrics = ABDLyricsBAlt
        \new Lyrics  = ABDLyricsC
        \new Lyrics = ABDLyricsCAlt
        \new Lyrics  = ABDLyricsD
        \new Lyrics = ABDLyricsDAlt
        \context Staff = ABDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABDVoiceLH \BBHAHxHAMusicLH
        >>
        \context Lyrics = ABDLyricsA \lyricsto ABDVoiceLyrics \ABDVerseA
        \context Lyrics = ABDLyricsAAlt \lyricsto ABDVoiceLyrics \ABDVerseAAlt
        \context Lyrics = ABDLyricsB \lyricsto ABDVoiceLyrics \ABDVerseB
        \context Lyrics = ABDLyricsBAlt \lyricsto ABDVoiceLyrics \ABDVerseBAlt
        \context Lyrics = ABDLyricsC \lyricsto ABDVoiceLyrics \ABDVerseC
        \context Lyrics = ABDLyricsCAlt \lyricsto ABDVoiceLyrics \ABDVerseCAlt
        \context Lyrics = ABDLyricsD \lyricsto ABDVoiceLyrics \ABDVerseD
        \context Lyrics = ABDLyricsDAlt \lyricsto ABDVoiceLyrics \ABDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {125}
        \fontsize #6 \center-align \line {Jesus wanneer ek aan U dink}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {13}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABEStaffGroup <<
        \context Staff = ABEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABEVoiceLyrics \BBHAIxACMusicLyrics
            \context Voice = ABEVoiceRH \BBHAIxACMusicRH
        >>
        \new Lyrics  = ABELyricsA
        \new Lyrics = ABELyricsAAlt
        \new Lyrics  = ABELyricsB
        \new Lyrics = ABELyricsBAlt
        \new Lyrics  = ABELyricsC
        \new Lyrics = ABELyricsCAlt
        \new Lyrics  = ABELyricsD
        \new Lyrics = ABELyricsDAlt
        \new Lyrics  = ABELyricsE
        \new Lyrics = ABELyricsEAlt
        \context Staff = ABEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABEVoiceLH \BBHAIxACMusicLH
        >>
        \context Lyrics = ABELyricsA \lyricsto ABEVoiceLyrics \ABEVerseA
        \context Lyrics = ABELyricsAAlt \lyricsto ABEVoiceLyrics \ABEVerseAAlt
        \context Lyrics = ABELyricsB \lyricsto ABEVoiceLyrics \ABEVerseB
        \context Lyrics = ABELyricsBAlt \lyricsto ABEVoiceLyrics \ABEVerseBAlt
        \context Lyrics = ABELyricsC \lyricsto ABEVoiceLyrics \ABEVerseC
        \context Lyrics = ABELyricsCAlt \lyricsto ABEVoiceLyrics \ABEVerseCAlt
        \context Lyrics = ABELyricsD \lyricsto ABEVoiceLyrics \ABEVerseD
        \context Lyrics = ABELyricsDAlt \lyricsto ABEVoiceLyrics \ABEVerseDAlt
        \context Lyrics = ABELyricsE \lyricsto ABEVoiceLyrics \ABEVerseE
        \context Lyrics = ABELyricsEAlt \lyricsto ABEVoiceLyrics \ABEVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {126}
        \fontsize #6 \center-align \line {Kom broeders aan}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {304}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABFStaffGroup <<
        \context Staff = ABFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABFVoiceLyrics \BBHBZxCZDMusicLyrics
            \context Voice = ABFVoiceRH \BBHBZxCZDMusicRH
        >>
        \new Lyrics  = ABFLyricsA
        \new Lyrics = ABFLyricsAAlt
        \new Lyrics  = ABFLyricsB
        \new Lyrics = ABFLyricsBAlt
        \new Lyrics  = ABFLyricsC
        \new Lyrics = ABFLyricsCAlt
        \new Lyrics  = ABFLyricsD
        \new Lyrics = ABFLyricsDAlt
        \context Staff = ABFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABFVoiceLH \BBHBZxCZDMusicLH
        >>
        \context Lyrics = ABFLyricsA \lyricsto ABFVoiceLyrics \ABFVerseA
        \context Lyrics = ABFLyricsAAlt \lyricsto ABFVoiceLyrics \ABFVerseAAlt
        \context Lyrics = ABFLyricsB \lyricsto ABFVoiceLyrics \ABFVerseB
        \context Lyrics = ABFLyricsBAlt \lyricsto ABFVoiceLyrics \ABFVerseBAlt
        \context Lyrics = ABFLyricsC \lyricsto ABFVoiceLyrics \ABFVerseC
        \context Lyrics = ABFLyricsCAlt \lyricsto ABFVoiceLyrics \ABFVerseCAlt
        \context Lyrics = ABFLyricsD \lyricsto ABFVoiceLyrics \ABFVerseD
        \context Lyrics = ABFLyricsDAlt \lyricsto ABFVoiceLyrics \ABFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {127}
        \fontsize #6 \center-align \line {Kom hier opsy en rus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {175}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABGStaffGroup <<
        \context Staff = ABGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABGVoiceLyrics \BBHBAxAGZMusicLyrics
            \context Voice = ABGVoiceRH \BBHBAxAGZMusicRH
        >>
        \new Lyrics  = ABGLyricsA
        \new Lyrics = ABGLyricsAAlt
        \new Lyrics  = ABGLyricsB
        \new Lyrics = ABGLyricsBAlt
        \new Lyrics  = ABGLyricsC
        \new Lyrics = ABGLyricsCAlt
        \new Lyrics  = ABGLyricsD
        \new Lyrics = ABGLyricsDAlt
        \context Staff = ABGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABGVoiceLH \BBHBAxAGZMusicLH
        >>
        \context Lyrics = ABGLyricsA \lyricsto ABGVoiceLyrics \ABGVerseA
        \context Lyrics = ABGLyricsAAlt \lyricsto ABGVoiceLyrics \ABGVerseAAlt
        \context Lyrics = ABGLyricsB \lyricsto ABGVoiceLyrics \ABGVerseB
        \context Lyrics = ABGLyricsBAlt \lyricsto ABGVoiceLyrics \ABGVerseBAlt
        \context Lyrics = ABGLyricsC \lyricsto ABGVoiceLyrics \ABGVerseC
        \context Lyrics = ABGLyricsCAlt \lyricsto ABGVoiceLyrics \ABGVerseCAlt
        \context Lyrics = ABGLyricsD \lyricsto ABGVoiceLyrics \ABGVerseD
        \context Lyrics = ABGLyricsDAlt \lyricsto ABGVoiceLyrics \ABGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {128}
        \fontsize #6 \center-align \line {Kom, kom ons volg nou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {28}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABHStaffGroup <<
        \context Staff = ABHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABHVoiceLyrics \BBHBBxBGMusicLyrics
            \context Voice = ABHVoiceRH \BBHBBxBGMusicRH
        >>
        \new Lyrics  = ABHLyricsA
        \new Lyrics = ABHLyricsAAlt
        \new Lyrics  = ABHLyricsB
        \new Lyrics = ABHLyricsBAlt
        \new Lyrics  = ABHLyricsC
        \new Lyrics = ABHLyricsCAlt
        \new Lyrics  = ABHLyricsD
        \new Lyrics = ABHLyricsDAlt
        \context Staff = ABHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABHVoiceLH \BBHBBxBGMusicLH
        >>
        \context Lyrics = ABHLyricsA \lyricsto ABHVoiceLyrics \ABHVerseA
        \context Lyrics = ABHLyricsAAlt \lyricsto ABHVoiceLyrics \ABHVerseAAlt
        \context Lyrics = ABHLyricsB \lyricsto ABHVoiceLyrics \ABHVerseB
        \context Lyrics = ABHLyricsBAlt \lyricsto ABHVoiceLyrics \ABHVerseBAlt
        \context Lyrics = ABHLyricsC \lyricsto ABHVoiceLyrics \ABHVerseC
        \context Lyrics = ABHLyricsCAlt \lyricsto ABHVoiceLyrics \ABHVerseCAlt
        \context Lyrics = ABHLyricsD \lyricsto ABHVoiceLyrics \ABHVerseD
        \context Lyrics = ABHLyricsDAlt \lyricsto ABHVoiceLyrics \ABHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {129}
        \fontsize #6 \center-align \line {Kom maar na My}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {59}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ABIStaffGroup <<
        \context Staff = ABIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ABIVoiceLyrics \BBHBCxEIMoreSylCMusicLyrics
            \context Voice = ABIVoiceRH \BBHBCxEIMoreSylCMusicRH
        >>
        \new Lyrics  = ABILyricsA
        \new Lyrics = ABILyricsAAlt
        \new Lyrics  = ABILyricsB
        \new Lyrics = ABILyricsBAlt
        \new Lyrics  = ABILyricsC
        \new Lyrics = ABILyricsCAlt
        \new Lyrics  = ABILyricsD
        \new Lyrics = ABILyricsDAlt
        \context Staff = ABIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ABIVoiceLH \BBHBCxEIMoreSylCMusicLH
        >>
        \context Lyrics = ABILyricsA \lyricsto ABIVoiceLyrics \ABIVerseA
        \context Lyrics = ABILyricsAAlt \lyricsto ABIVoiceLyrics \ABIVerseAAlt
        \context Lyrics = ABILyricsB \lyricsto ABIVoiceLyrics \ABIVerseB
        \context Lyrics = ABILyricsBAlt \lyricsto ABIVoiceLyrics \ABIVerseBAlt
        \context Lyrics = ABILyricsC \lyricsto ABIVoiceLyrics \ABIVerseC
        \context Lyrics = ABILyricsCAlt \lyricsto ABIVoiceLyrics \ABIVerseCAlt
        \context Lyrics = ABILyricsD \lyricsto ABIVoiceLyrics \ABIVerseD
        \context Lyrics = ABILyricsDAlt \lyricsto ABIVoiceLyrics \ABIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {130}
        \fontsize #6 \center-align \line {Kom na Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {136}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACZStaffGroup <<
        \context Staff = ACZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACZVoiceLyrics \BBHBDxACFMusicLyrics
            \context Voice = ACZVoiceRH \BBHBDxACFMusicRH
        >>
        \new Lyrics  = ACZLyricsA
        \new Lyrics = ACZLyricsAAlt
        \new Lyrics  = ACZLyricsB
        \new Lyrics = ACZLyricsBAlt
        \new Lyrics  = ACZLyricsC
        \new Lyrics = ACZLyricsCAlt
        \new Lyrics  = ACZLyricsD
        \new Lyrics = ACZLyricsDAlt
        \context Staff = ACZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACZVoiceLH \BBHBDxACFMusicLH
        >>
        \context Lyrics = ACZLyricsA \lyricsto ACZVoiceLyrics \ACZVerseA
        \context Lyrics = ACZLyricsAAlt \lyricsto ACZVoiceLyrics \ACZVerseAAlt
        \context Lyrics = ACZLyricsB \lyricsto ACZVoiceLyrics \ACZVerseB
        \context Lyrics = ACZLyricsBAlt \lyricsto ACZVoiceLyrics \ACZVerseBAlt
        \context Lyrics = ACZLyricsC \lyricsto ACZVoiceLyrics \ACZVerseC
        \context Lyrics = ACZLyricsCAlt \lyricsto ACZVoiceLyrics \ACZVerseCAlt
        \context Lyrics = ACZLyricsD \lyricsto ACZVoiceLyrics \ACZVerseD
        \context Lyrics = ACZLyricsDAlt \lyricsto ACZVoiceLyrics \ACZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {131}
        \fontsize #6 \center-align \line {Kom ons tree toe tot God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {185}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACAStaffGroup <<
        \context Staff = ACAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACAVoiceLyrics \BBHBExAHEMusicLyrics
            \context Voice = ACAVoiceRH \BBHBExAHEMusicRH
        >>
        \new Lyrics  = ACALyricsA
        \new Lyrics = ACALyricsAAlt
        \new Lyrics  = ACALyricsB
        \new Lyrics = ACALyricsBAlt
        \new Lyrics  = ACALyricsC
        \new Lyrics = ACALyricsCAlt
        \new Lyrics  = ACALyricsD
        \new Lyrics = ACALyricsDAlt
        \context Staff = ACAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACAVoiceLH \BBHBExAHEMusicLH
        >>
        \context Lyrics = ACALyricsA \lyricsto ACAVoiceLyrics \ACAVerseA
        \context Lyrics = ACALyricsAAlt \lyricsto ACAVoiceLyrics \ACAVerseAAlt
        \context Lyrics = ACALyricsB \lyricsto ACAVoiceLyrics \ACAVerseB
        \context Lyrics = ACALyricsBAlt \lyricsto ACAVoiceLyrics \ACAVerseBAlt
        \context Lyrics = ACALyricsC \lyricsto ACAVoiceLyrics \ACAVerseC
        \context Lyrics = ACALyricsCAlt \lyricsto ACAVoiceLyrics \ACAVerseCAlt
        \context Lyrics = ACALyricsD \lyricsto ACAVoiceLyrics \ACAVerseD
        \context Lyrics = ACALyricsDAlt \lyricsto ACAVoiceLyrics \ACAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {132}
        \fontsize #6 \center-align \line {Kom, vermoeides, nou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {94}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACBStaffGroup <<
        \context Staff = ACBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACBVoiceLyrics \BBHBFxIDMusicLyrics
            \context Voice = ACBVoiceRH \BBHBFxIDMusicRH
        >>
        \new Lyrics  = ACBLyricsA
        \new Lyrics = ACBLyricsAAlt
        \new Lyrics  = ACBLyricsB
        \new Lyrics = ACBLyricsBAlt
        \new Lyrics  = ACBLyricsC
        \new Lyrics = ACBLyricsCAlt
        \context Staff = ACBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACBVoiceLH \BBHBFxIDMusicLH
        >>
        \context Lyrics = ACBLyricsA \lyricsto ACBVoiceLyrics \ACBVerseA
        \context Lyrics = ACBLyricsAAlt \lyricsto ACBVoiceLyrics \ACBVerseAAlt
        \context Lyrics = ACBLyricsB \lyricsto ACBVoiceLyrics \ACBVerseB
        \context Lyrics = ACBLyricsBAlt \lyricsto ACBVoiceLyrics \ACBVerseBAlt
        \context Lyrics = ACBLyricsC \lyricsto ACBVoiceLyrics \ACBVerseC
        \context Lyrics = ACBLyricsCAlt \lyricsto ACBVoiceLyrics \ACBVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {133}
        \fontsize #6 \center-align \line {Kon ons maar weet}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {21}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACCStaffGroup <<
        \context Staff = ACCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACCVoiceLyrics \BBHBGxBAMusicLyrics
            \context Voice = ACCVoiceRH \BBHBGxBAMusicRH
        >>
        \new Lyrics  = ACCLyricsA
        \new Lyrics = ACCLyricsAAlt
        \new Lyrics  = ACCLyricsB
        \new Lyrics = ACCLyricsBAlt
        \new Lyrics  = ACCLyricsC
        \new Lyrics = ACCLyricsCAlt
        \new Lyrics  = ACCLyricsD
        \new Lyrics = ACCLyricsDAlt
        \context Staff = ACCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACCVoiceLH \BBHBGxBAMusicLH
        >>
        \context Lyrics = ACCLyricsA \lyricsto ACCVoiceLyrics \ACCVerseA
        \context Lyrics = ACCLyricsAAlt \lyricsto ACCVoiceLyrics \ACCVerseAAlt
        \context Lyrics = ACCLyricsB \lyricsto ACCVoiceLyrics \ACCVerseB
        \context Lyrics = ACCLyricsBAlt \lyricsto ACCVoiceLyrics \ACCVerseBAlt
        \context Lyrics = ACCLyricsC \lyricsto ACCVoiceLyrics \ACCVerseC
        \context Lyrics = ACCLyricsCAlt \lyricsto ACCVoiceLyrics \ACCVerseCAlt
        \context Lyrics = ACCLyricsD \lyricsto ACCVoiceLyrics \ACCVerseD
        \context Lyrics = ACCLyricsDAlt \lyricsto ACCVoiceLyrics \ACCVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {134}
        \fontsize #6 \center-align \line {Kyk die Heiland}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {73}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACDStaffGroup <<
        \context Staff = ACDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACDVoiceLyrics \BBHBHxGCMusicLyrics
            \context Voice = ACDVoiceRH \BBHBHxGCMusicRH
        >>
        \new Lyrics  = ACDLyricsA
        \new Lyrics = ACDLyricsAAlt
        \new Lyrics  = ACDLyricsB
        \new Lyrics = ACDLyricsBAlt
        \new Lyrics  = ACDLyricsC
        \new Lyrics = ACDLyricsCAlt
        \context Staff = ACDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACDVoiceLH \BBHBHxGCMusicLH
        >>
        \context Lyrics = ACDLyricsA \lyricsto ACDVoiceLyrics \ACDVerseA
        \context Lyrics = ACDLyricsAAlt \lyricsto ACDVoiceLyrics \ACDVerseAAlt
        \context Lyrics = ACDLyricsB \lyricsto ACDVoiceLyrics \ACDVerseB
        \context Lyrics = ACDLyricsBAlt \lyricsto ACDVoiceLyrics \ACDVerseBAlt
        \context Lyrics = ACDLyricsC \lyricsto ACDVoiceLyrics \ACDVerseC
        \context Lyrics = ACDLyricsCAlt \lyricsto ACDVoiceLyrics \ACDVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {135}
        \fontsize #6 \center-align \line {Kyk moedig tree ons}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {305}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACEStaffGroup <<
        \context Staff = ACEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACEVoiceLyrics \BBHBIxCZEMusicLyrics
            \context Voice = ACEVoiceRH \BBHBIxCZEMusicRH
        >>
        \new Lyrics  = ACELyricsA
        \new Lyrics = ACELyricsAAlt
        \new Lyrics  = ACELyricsB
        \new Lyrics = ACELyricsBAlt
        \new Lyrics  = ACELyricsC
        \new Lyrics = ACELyricsCAlt
        \new Lyrics  = ACELyricsD
        \new Lyrics = ACELyricsDAlt
        \context Staff = ACEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACEVoiceLH \BBHBIxCZEMusicLH
        >>
        \context Lyrics = ACELyricsA \lyricsto ACEVoiceLyrics \ACEVerseA
        \context Lyrics = ACELyricsAAlt \lyricsto ACEVoiceLyrics \ACEVerseAAlt
        \context Lyrics = ACELyricsB \lyricsto ACEVoiceLyrics \ACEVerseB
        \context Lyrics = ACELyricsBAlt \lyricsto ACEVoiceLyrics \ACEVerseBAlt
        \context Lyrics = ACELyricsC \lyricsto ACEVoiceLyrics \ACEVerseC
        \context Lyrics = ACELyricsCAlt \lyricsto ACEVoiceLyrics \ACEVerseCAlt
        \context Lyrics = ACELyricsD \lyricsto ACEVoiceLyrics \ACEVerseD
        \context Lyrics = ACELyricsDAlt \lyricsto ACEVoiceLyrics \ACEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {136}
        \fontsize #6 \center-align \line {Laat ek my oorgee}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {57}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACFStaffGroup <<
        \context Staff = ACFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACFVoiceLyrics \BBHCZxEGMusicLyrics
            \context Voice = ACFVoiceRH \BBHCZxEGMusicRH
        >>
        \new Lyrics  = ACFLyricsA
        \new Lyrics = ACFLyricsAAlt
        \new Lyrics  = ACFLyricsB
        \new Lyrics = ACFLyricsBAlt
        \new Lyrics  = ACFLyricsC
        \new Lyrics = ACFLyricsCAlt
        \context Staff = ACFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACFVoiceLH \BBHCZxEGMusicLH
        >>
        \context Lyrics = ACFLyricsA \lyricsto ACFVoiceLyrics \ACFVerseA
        \context Lyrics = ACFLyricsAAlt \lyricsto ACFVoiceLyrics \ACFVerseAAlt
        \context Lyrics = ACFLyricsB \lyricsto ACFVoiceLyrics \ACFVerseB
        \context Lyrics = ACFLyricsBAlt \lyricsto ACFVoiceLyrics \ACFVerseBAlt
        \context Lyrics = ACFLyricsC \lyricsto ACFVoiceLyrics \ACFVerseC
        \context Lyrics = ACFLyricsCAlt \lyricsto ACFVoiceLyrics \ACFVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {137}
        \fontsize #6 \center-align \line {Laat ons moed nooit}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {343}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACGStaffGroup <<
        \context Staff = ACGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACGVoiceLyrics \BBHCAxCDCMusicLyrics
            \context Voice = ACGVoiceRH \BBHCAxCDCMusicRH
        >>
        \new Lyrics  = ACGLyricsA
        \new Lyrics = ACGLyricsAAlt
        \new Lyrics  = ACGLyricsB
        \new Lyrics = ACGLyricsBAlt
        \new Lyrics  = ACGLyricsC
        \new Lyrics = ACGLyricsCAlt
        \new Lyrics  = ACGLyricsD
        \new Lyrics = ACGLyricsDAlt
        \context Staff = ACGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACGVoiceLH \BBHCAxCDCMusicLH
        >>
        \context Lyrics = ACGLyricsA \lyricsto ACGVoiceLyrics \ACGVerseA
        \context Lyrics = ACGLyricsAAlt \lyricsto ACGVoiceLyrics \ACGVerseAAlt
        \context Lyrics = ACGLyricsB \lyricsto ACGVoiceLyrics \ACGVerseB
        \context Lyrics = ACGLyricsBAlt \lyricsto ACGVoiceLyrics \ACGVerseBAlt
        \context Lyrics = ACGLyricsC \lyricsto ACGVoiceLyrics \ACGVerseC
        \context Lyrics = ACGLyricsCAlt \lyricsto ACGVoiceLyrics \ACGVerseCAlt
        \context Lyrics = ACGLyricsD \lyricsto ACGVoiceLyrics \ACGVerseD
        \context Lyrics = ACGLyricsDAlt \lyricsto ACGVoiceLyrics \ACGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {138}
        \fontsize #6 \center-align \line {Laat ons steeds let}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {364}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACHStaffGroup <<
        \context Staff = ACHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACHVoiceLyrics \BBHCBxCFDLessSylMusicLyrics
            \context Voice = ACHVoiceRH \BBHCBxCFDLessSylMusicRH
        >>
        \new Lyrics  = ACHLyricsA
        \new Lyrics = ACHLyricsAAlt
        \new Lyrics  = ACHLyricsB
        \new Lyrics = ACHLyricsBAlt
        \new Lyrics  = ACHLyricsC
        \new Lyrics = ACHLyricsCAlt
        \new Lyrics  = ACHLyricsD
        \new Lyrics = ACHLyricsDAlt
        \context Staff = ACHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACHVoiceLH \BBHCBxCFDLessSylMusicLH
        >>
        \context Lyrics = ACHLyricsA \lyricsto ACHVoiceLyrics \ACHVerseA
        \context Lyrics = ACHLyricsAAlt \lyricsto ACHVoiceLyrics \ACHVerseAAlt
        \context Lyrics = ACHLyricsB \lyricsto ACHVoiceLyrics \ACHVerseB
        \context Lyrics = ACHLyricsBAlt \lyricsto ACHVoiceLyrics \ACHVerseBAlt
        \context Lyrics = ACHLyricsC \lyricsto ACHVoiceLyrics \ACHVerseC
        \context Lyrics = ACHLyricsCAlt \lyricsto ACHVoiceLyrics \ACHVerseCAlt
        \context Lyrics = ACHLyricsD \lyricsto ACHVoiceLyrics \ACHVerseD
        \context Lyrics = ACHLyricsDAlt \lyricsto ACHVoiceLyrics \ACHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {139}
        \fontsize #6 \center-align \line {Laat ons stilstaan}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {98}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ACIStaffGroup <<
        \context Staff = ACIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ACIVoiceLyrics \BBHCCxIHMusicLyrics
            \context Voice = ACIVoiceRH \BBHCCxIHMusicRH
        >>
        \new Lyrics  = ACILyricsA
        \new Lyrics = ACILyricsAAlt
        \new Lyrics  = ACILyricsB
        \new Lyrics = ACILyricsBAlt
        \new Lyrics  = ACILyricsC
        \new Lyrics = ACILyricsCAlt
        \new Lyrics  = ACILyricsD
        \new Lyrics = ACILyricsDAlt
        \context Staff = ACIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ACIVoiceLH \BBHCCxIHMusicLH
        >>
        \context Lyrics = ACILyricsA \lyricsto ACIVoiceLyrics \ACIVerseA
        \context Lyrics = ACILyricsAAlt \lyricsto ACIVoiceLyrics \ACIVerseAAlt
        \context Lyrics = ACILyricsB \lyricsto ACIVoiceLyrics \ACIVerseB
        \context Lyrics = ACILyricsBAlt \lyricsto ACIVoiceLyrics \ACIVerseBAlt
        \context Lyrics = ACILyricsC \lyricsto ACIVoiceLyrics \ACIVerseC
        \context Lyrics = ACILyricsCAlt \lyricsto ACIVoiceLyrics \ACIVerseCAlt
        \context Lyrics = ACILyricsD \lyricsto ACIVoiceLyrics \ACIVerseD
        \context Lyrics = ACILyricsDAlt \lyricsto ACIVoiceLyrics \ACIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {140}
        \fontsize #6 \center-align \line {Lê neer u sware laste}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {111}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADZStaffGroup <<
        \context Staff = ADZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADZVoiceLyrics \BBHCDxAAAMusicLyrics
            \context Voice = ADZVoiceRH \BBHCDxAAAMusicRH
        >>
        \new Lyrics  = ADZLyricsA
        \new Lyrics = ADZLyricsAAlt
        \new Lyrics  = ADZLyricsB
        \new Lyrics = ADZLyricsBAlt
        \new Lyrics  = ADZLyricsC
        \new Lyrics = ADZLyricsCAlt
        \new Lyrics  = ADZLyricsD
        \new Lyrics = ADZLyricsDAlt
        \context Staff = ADZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADZVoiceLH \BBHCDxAAAMusicLH
        >>
        \new Lyrics = ADZLyricsBelow
        \context Lyrics = ADZLyricsA \lyricsto ADZVoiceLyrics \ADZVerseA
        \context Lyrics = ADZLyricsAAlt \lyricsto ADZVoiceLyrics \ADZVerseAAlt
        \context Lyrics = ADZLyricsB \lyricsto ADZVoiceLyrics \ADZVerseB
        \context Lyrics = ADZLyricsBAlt \lyricsto ADZVoiceLyrics \ADZVerseBAlt
        \context Lyrics = ADZLyricsC \lyricsto ADZVoiceLyrics \ADZVerseC
        \context Lyrics = ADZLyricsCAlt \lyricsto ADZVoiceLyrics \ADZVerseCAlt
        \context Lyrics = ADZLyricsD \lyricsto ADZVoiceLyrics \ADZVerseD
        \context Lyrics = ADZLyricsDAlt \lyricsto ADZVoiceLyrics \ADZVerseDAlt
        \context Lyrics = ADZLyricsBelow \lyricsto ADZVoiceLyrics \ADZBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {141}
        \fontsize #6 \center-align \line {Leef vir and're, elke dag}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {324}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADAStaffGroup <<
        \context Staff = ADAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADAVoiceLyrics \BBHCExCBDMusicLyrics
            \context Voice = ADAVoiceRH \BBHCExCBDMusicRH
        >>
        \new Lyrics  = ADALyricsA
        \new Lyrics = ADALyricsAAlt
        \new Lyrics  = ADALyricsB
        \new Lyrics = ADALyricsBAlt
        \new Lyrics  = ADALyricsC
        \new Lyrics = ADALyricsCAlt
        \new Lyrics  = ADALyricsD
        \new Lyrics = ADALyricsDAlt
        \context Staff = ADAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADAVoiceLH \BBHCExCBDMusicLH
        >>
        \context Lyrics = ADALyricsA \lyricsto ADAVoiceLyrics \ADAVerseA
        \context Lyrics = ADALyricsAAlt \lyricsto ADAVoiceLyrics \ADAVerseAAlt
        \context Lyrics = ADALyricsB \lyricsto ADAVoiceLyrics \ADAVerseB
        \context Lyrics = ADALyricsBAlt \lyricsto ADAVoiceLyrics \ADAVerseBAlt
        \context Lyrics = ADALyricsC \lyricsto ADAVoiceLyrics \ADAVerseC
        \context Lyrics = ADALyricsCAlt \lyricsto ADAVoiceLyrics \ADAVerseCAlt
        \context Lyrics = ADALyricsD \lyricsto ADAVoiceLyrics \ADAVerseD
        \context Lyrics = ADALyricsDAlt \lyricsto ADAVoiceLyrics \ADAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {142}
        \fontsize #6 \center-align \line {Leer my, O Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {130}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADBStaffGroup <<
        \context Staff = ADBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADBVoiceLyrics \BBHCFxACZMusicLyrics
            \context Voice = ADBVoiceRH \BBHCFxACZMusicRH
        >>
        \new Lyrics  = ADBLyricsA
        \new Lyrics = ADBLyricsAAlt
        \new Lyrics  = ADBLyricsB
        \new Lyrics = ADBLyricsBAlt
        \new Lyrics  = ADBLyricsC
        \new Lyrics = ADBLyricsCAlt
        \context Staff = ADBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADBVoiceLH \BBHCFxACZMusicLH
        >>
        \context Lyrics = ADBLyricsA \lyricsto ADBVoiceLyrics \ADBVerseA
        \context Lyrics = ADBLyricsAAlt \lyricsto ADBVoiceLyrics \ADBVerseAAlt
        \context Lyrics = ADBLyricsB \lyricsto ADBVoiceLyrics \ADBVerseB
        \context Lyrics = ADBLyricsBAlt \lyricsto ADBVoiceLyrics \ADBVerseBAlt
        \context Lyrics = ADBLyricsC \lyricsto ADBVoiceLyrics \ADBVerseC
        \context Lyrics = ADBLyricsCAlt \lyricsto ADBVoiceLyrics \ADBVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {143}
        \fontsize #6 \center-align \line {Leer my U weg, O Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {60}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADCStaffGroup <<
        \context Staff = ADCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADCVoiceLyrics \BBHCGxFZMusicLyrics
            \context Voice = ADCVoiceRH \BBHCGxFZMusicRH
        >>
        \new Lyrics  = ADCLyricsA
        \new Lyrics = ADCLyricsAAlt
        \new Lyrics  = ADCLyricsB
        \new Lyrics = ADCLyricsBAlt
        \new Lyrics  = ADCLyricsC
        \new Lyrics = ADCLyricsCAlt
        \new Lyrics  = ADCLyricsD
        \new Lyrics = ADCLyricsDAlt
        \context Staff = ADCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADCVoiceLH \BBHCGxFZMusicLH
        >>
        \context Lyrics = ADCLyricsA \lyricsto ADCVoiceLyrics \ADCVerseA
        \context Lyrics = ADCLyricsAAlt \lyricsto ADCVoiceLyrics \ADCVerseAAlt
        \context Lyrics = ADCLyricsB \lyricsto ADCVoiceLyrics \ADCVerseB
        \context Lyrics = ADCLyricsBAlt \lyricsto ADCVoiceLyrics \ADCVerseBAlt
        \context Lyrics = ADCLyricsC \lyricsto ADCVoiceLyrics \ADCVerseC
        \context Lyrics = ADCLyricsCAlt \lyricsto ADCVoiceLyrics \ADCVerseCAlt
        \context Lyrics = ADCLyricsD \lyricsto ADCVoiceLyrics \ADCVerseD
        \context Lyrics = ADCLyricsDAlt \lyricsto ADCVoiceLyrics \ADCVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {144}
        \fontsize #6 \center-align \line {Leer ons, Heer, te tel}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {34}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADDStaffGroup <<
        \context Staff = ADDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADDVoiceLyrics \BBHCHxCDMusicLyrics
            \context Voice = ADDVoiceRH \BBHCHxCDMusicRH
        >>
        \new Lyrics  = ADDLyricsA
        \new Lyrics = ADDLyricsAAlt
        \new Lyrics  = ADDLyricsB
        \new Lyrics = ADDLyricsBAlt
        \new Lyrics  = ADDLyricsC
        \new Lyrics = ADDLyricsCAlt
        \new Lyrics  = ADDLyricsD
        \new Lyrics = ADDLyricsDAlt
        \context Staff = ADDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADDVoiceLH \BBHCHxCDMusicLH
        >>
        \context Lyrics = ADDLyricsA \lyricsto ADDVoiceLyrics \ADDVerseA
        \context Lyrics = ADDLyricsAAlt \lyricsto ADDVoiceLyrics \ADDVerseAAlt
        \context Lyrics = ADDLyricsB \lyricsto ADDVoiceLyrics \ADDVerseB
        \context Lyrics = ADDLyricsBAlt \lyricsto ADDVoiceLyrics \ADDVerseBAlt
        \context Lyrics = ADDLyricsC \lyricsto ADDVoiceLyrics \ADDVerseC
        \context Lyrics = ADDLyricsCAlt \lyricsto ADDVoiceLyrics \ADDVerseCAlt
        \context Lyrics = ADDLyricsD \lyricsto ADDVoiceLyrics \ADDVerseD
        \context Lyrics = ADDLyricsDAlt \lyricsto ADDVoiceLyrics \ADDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {145}
        \fontsize #6 \center-align \line {Loof, loof die Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {238}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADEStaffGroup <<
        \context Staff = ADEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADEVoiceLyrics \BBHCIxBCHMusicLyrics
            \context Voice = ADEVoiceRH \BBHCIxBCHMusicRH
        >>
        \new Lyrics  = ADELyricsA
        \new Lyrics = ADELyricsAAlt
        \new Lyrics  = ADELyricsB
        \new Lyrics = ADELyricsBAlt
        \new Lyrics  = ADELyricsC
        \new Lyrics = ADELyricsCAlt
        \new Lyrics  = ADELyricsD
        \new Lyrics = ADELyricsDAlt
        \context Staff = ADEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADEVoiceLH \BBHCIxBCHMusicLH
        >>
        \context Lyrics = ADELyricsA \lyricsto ADEVoiceLyrics \ADEVerseA
        \context Lyrics = ADELyricsAAlt \lyricsto ADEVoiceLyrics \ADEVerseAAlt
        \context Lyrics = ADELyricsB \lyricsto ADEVoiceLyrics \ADEVerseB
        \context Lyrics = ADELyricsBAlt \lyricsto ADEVoiceLyrics \ADEVerseBAlt
        \context Lyrics = ADELyricsC \lyricsto ADEVoiceLyrics \ADEVerseC
        \context Lyrics = ADELyricsCAlt \lyricsto ADEVoiceLyrics \ADEVerseCAlt
        \context Lyrics = ADELyricsD \lyricsto ADEVoiceLyrics \ADEVerseD
        \context Lyrics = ADELyricsDAlt \lyricsto ADEVoiceLyrics \ADEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {146}
        \fontsize #6 \center-align \line {Maak plek vir Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {379}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADFStaffGroup <<
        \context Staff = ADFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADFVoiceLyrics \BBHDZxCGIMusicLyrics
            \context Voice = ADFVoiceRH \BBHDZxCGIMusicRH
        >>
        \new Lyrics  = ADFLyricsA
        \new Lyrics = ADFLyricsAAlt
        \new Lyrics  = ADFLyricsB
        \new Lyrics = ADFLyricsBAlt
        \new Lyrics  = ADFLyricsC
        \new Lyrics = ADFLyricsCAlt
        \new Lyrics  = ADFLyricsD
        \new Lyrics = ADFLyricsDAlt
        \new Lyrics  = ADFLyricsE
        \new Lyrics = ADFLyricsEAlt
        \context Staff = ADFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADFVoiceLH \BBHDZxCGIMusicLH
        >>
        \context Lyrics = ADFLyricsA \lyricsto ADFVoiceLyrics \ADFVerseA
        \context Lyrics = ADFLyricsAAlt \lyricsto ADFVoiceLyrics \ADFVerseAAlt
        \context Lyrics = ADFLyricsB \lyricsto ADFVoiceLyrics \ADFVerseB
        \context Lyrics = ADFLyricsBAlt \lyricsto ADFVoiceLyrics \ADFVerseBAlt
        \context Lyrics = ADFLyricsC \lyricsto ADFVoiceLyrics \ADFVerseC
        \context Lyrics = ADFLyricsCAlt \lyricsto ADFVoiceLyrics \ADFVerseCAlt
        \context Lyrics = ADFLyricsD \lyricsto ADFVoiceLyrics \ADFVerseD
        \context Lyrics = ADFLyricsDAlt \lyricsto ADFVoiceLyrics \ADFVerseDAlt
        \context Lyrics = ADFLyricsE \lyricsto ADFVoiceLyrics \ADFVerseE
        \context Lyrics = ADFLyricsEAlt \lyricsto ADFVoiceLyrics \ADFVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {147}
        \fontsize #6 \center-align \line {Mag hul almal een wees}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {333}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADGStaffGroup <<
        \context Staff = ADGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADGVoiceLyrics \BBHDAxCCCMusicLyrics
            \context Voice = ADGVoiceRH \BBHDAxCCCMusicRH
        >>
        \new Lyrics  = ADGLyricsA
        \new Lyrics = ADGLyricsAAlt
        \new Lyrics  = ADGLyricsB
        \new Lyrics = ADGLyricsBAlt
        \new Lyrics  = ADGLyricsC
        \new Lyrics = ADGLyricsCAlt
        \new Lyrics  = ADGLyricsD
        \new Lyrics = ADGLyricsDAlt
        \context Staff = ADGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADGVoiceLH \BBHDAxCCCMusicLH
        >>
        \context Lyrics = ADGLyricsA \lyricsto ADGVoiceLyrics \ADGVerseA
        \context Lyrics = ADGLyricsAAlt \lyricsto ADGVoiceLyrics \ADGVerseAAlt
        \context Lyrics = ADGLyricsB \lyricsto ADGVoiceLyrics \ADGVerseB
        \context Lyrics = ADGLyricsBAlt \lyricsto ADGVoiceLyrics \ADGVerseBAlt
        \context Lyrics = ADGLyricsC \lyricsto ADGVoiceLyrics \ADGVerseC
        \context Lyrics = ADGLyricsCAlt \lyricsto ADGVoiceLyrics \ADGVerseCAlt
        \context Lyrics = ADGLyricsD \lyricsto ADGVoiceLyrics \ADGVerseD
        \context Lyrics = ADGLyricsDAlt \lyricsto ADGVoiceLyrics \ADGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {148}
        \fontsize #6 \center-align \line {Mag U liefde so volmaak}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {216}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADHStaffGroup <<
        \context Staff = ADHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADHVoiceLyrics \BBHDBxBAFMusicLyrics
            \context Voice = ADHVoiceRH \BBHDBxBAFMusicRH
        >>
        \new Lyrics  = ADHLyricsA
        \new Lyrics = ADHLyricsAAlt
        \new Lyrics  = ADHLyricsB
        \new Lyrics = ADHLyricsBAlt
        \new Lyrics  = ADHLyricsC
        \new Lyrics = ADHLyricsCAlt
        \new Lyrics  = ADHLyricsD
        \new Lyrics = ADHLyricsDAlt
        \context Staff = ADHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADHVoiceLH \BBHDBxBAFMusicLH
        >>
        \context Lyrics = ADHLyricsA \lyricsto ADHVoiceLyrics \ADHVerseA
        \context Lyrics = ADHLyricsAAlt \lyricsto ADHVoiceLyrics \ADHVerseAAlt
        \context Lyrics = ADHLyricsB \lyricsto ADHVoiceLyrics \ADHVerseB
        \context Lyrics = ADHLyricsBAlt \lyricsto ADHVoiceLyrics \ADHVerseBAlt
        \context Lyrics = ADHLyricsC \lyricsto ADHVoiceLyrics \ADHVerseC
        \context Lyrics = ADHLyricsCAlt \lyricsto ADHVoiceLyrics \ADHVerseCAlt
        \context Lyrics = ADHLyricsD \lyricsto ADHVoiceLyrics \ADHVerseD
        \context Lyrics = ADHLyricsDAlt \lyricsto ADHVoiceLyrics \ADHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {149}
        \fontsize #6 \center-align \line {Meer liefde, dierbaar' Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {220}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = ADIStaffGroup <<
        \context Staff = ADIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = ADIVoiceLyrics \BBHDCxBBZMusicLyrics
            \context Voice = ADIVoiceRH \BBHDCxBBZMusicRH
        >>
        \new Lyrics  = ADILyricsA
        \new Lyrics = ADILyricsAAlt
        \new Lyrics  = ADILyricsB
        \new Lyrics = ADILyricsBAlt
        \new Lyrics  = ADILyricsC
        \new Lyrics = ADILyricsCAlt
        \new Lyrics  = ADILyricsD
        \new Lyrics = ADILyricsDAlt
        \context Staff = ADIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = ADIVoiceLH \BBHDCxBBZMusicLH
        >>
        \context Lyrics = ADILyricsA \lyricsto ADIVoiceLyrics \ADIVerseA
        \context Lyrics = ADILyricsAAlt \lyricsto ADIVoiceLyrics \ADIVerseAAlt
        \context Lyrics = ADILyricsB \lyricsto ADIVoiceLyrics \ADIVerseB
        \context Lyrics = ADILyricsBAlt \lyricsto ADIVoiceLyrics \ADIVerseBAlt
        \context Lyrics = ADILyricsC \lyricsto ADIVoiceLyrics \ADIVerseC
        \context Lyrics = ADILyricsCAlt \lyricsto ADIVoiceLyrics \ADIVerseCAlt
        \context Lyrics = ADILyricsD \lyricsto ADIVoiceLyrics \ADIVerseD
        \context Lyrics = ADILyricsDAlt \lyricsto ADIVoiceLyrics \ADIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {150}
        \fontsize #6 \center-align \line {Meer van my Heiland}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {2}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEZStaffGroup <<
        \context Staff = AEZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEZVoiceLyrics \BBHDDxBMusicLyrics
            \context Voice = AEZVoiceRH \BBHDDxBMusicRH
        >>
        \new Lyrics  = AEZLyricsA
        \new Lyrics = AEZLyricsAAlt
        \new Lyrics  = AEZLyricsB
        \new Lyrics = AEZLyricsBAlt
        \new Lyrics  = AEZLyricsC
        \new Lyrics = AEZLyricsCAlt
        \new Lyrics  = AEZLyricsD
        \new Lyrics = AEZLyricsDAlt
        \context Staff = AEZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEZVoiceLH \BBHDDxBMusicLH
        >>
        \context Lyrics = AEZLyricsA \lyricsto AEZVoiceLyrics \AEZVerseA
        \context Lyrics = AEZLyricsAAlt \lyricsto AEZVoiceLyrics \AEZVerseAAlt
        \context Lyrics = AEZLyricsB \lyricsto AEZVoiceLyrics \AEZVerseB
        \context Lyrics = AEZLyricsBAlt \lyricsto AEZVoiceLyrics \AEZVerseBAlt
        \context Lyrics = AEZLyricsC \lyricsto AEZVoiceLyrics \AEZVerseC
        \context Lyrics = AEZLyricsCAlt \lyricsto AEZVoiceLyrics \AEZVerseCAlt
        \context Lyrics = AEZLyricsD \lyricsto AEZVoiceLyrics \AEZVerseD
        \context Lyrics = AEZLyricsDAlt \lyricsto AEZVoiceLyrics \AEZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {151}
        \fontsize #6 \center-align \line {Meester, spreek}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {255}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEAStaffGroup <<
        \context Staff = AEAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEAVoiceLyrics \BBHDExBEEMusicLyrics
            \context Voice = AEAVoiceRH \BBHDExBEEMusicRH
        >>
        \new Lyrics  = AEALyricsA
        \new Lyrics = AEALyricsAAlt
        \new Lyrics  = AEALyricsB
        \new Lyrics = AEALyricsBAlt
        \new Lyrics  = AEALyricsC
        \new Lyrics = AEALyricsCAlt
        \new Lyrics  = AEALyricsD
        \new Lyrics = AEALyricsDAlt
        \context Staff = AEAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEAVoiceLH \BBHDExBEEMusicLH
        >>
        \context Lyrics = AEALyricsA \lyricsto AEAVoiceLyrics \AEAVerseA
        \context Lyrics = AEALyricsAAlt \lyricsto AEAVoiceLyrics \AEAVerseAAlt
        \context Lyrics = AEALyricsB \lyricsto AEAVoiceLyrics \AEAVerseB
        \context Lyrics = AEALyricsBAlt \lyricsto AEAVoiceLyrics \AEAVerseBAlt
        \context Lyrics = AEALyricsC \lyricsto AEAVoiceLyrics \AEAVerseC
        \context Lyrics = AEALyricsCAlt \lyricsto AEAVoiceLyrics \AEAVerseCAlt
        \context Lyrics = AEALyricsD \lyricsto AEAVoiceLyrics \AEAVerseD
        \context Lyrics = AEALyricsDAlt \lyricsto AEAVoiceLyrics \AEAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {152}
        \fontsize #6 \center-align \line {Met kinderlik' vertroue}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {203}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEBStaffGroup <<
        \context Staff = AEBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEBVoiceLyrics \BBHDFxBZCMusicLyrics
            \context Voice = AEBVoiceRH \BBHDFxBZCMusicRH
        >>
        \new Lyrics  = AEBLyricsA
        \new Lyrics = AEBLyricsAAlt
        \new Lyrics  = AEBLyricsB
        \new Lyrics = AEBLyricsBAlt
        \new Lyrics  = AEBLyricsC
        \new Lyrics = AEBLyricsCAlt
        \new Lyrics  = AEBLyricsD
        \new Lyrics = AEBLyricsDAlt
        \context Staff = AEBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEBVoiceLH \BBHDFxBZCMusicLH
        >>
        \context Lyrics = AEBLyricsA \lyricsto AEBVoiceLyrics \AEBVerseA
        \context Lyrics = AEBLyricsAAlt \lyricsto AEBVoiceLyrics \AEBVerseAAlt
        \context Lyrics = AEBLyricsB \lyricsto AEBVoiceLyrics \AEBVerseB
        \context Lyrics = AEBLyricsBAlt \lyricsto AEBVoiceLyrics \AEBVerseBAlt
        \context Lyrics = AEBLyricsC \lyricsto AEBVoiceLyrics \AEBVerseC
        \context Lyrics = AEBLyricsCAlt \lyricsto AEBVoiceLyrics \AEBVerseCAlt
        \context Lyrics = AEBLyricsD \lyricsto AEBVoiceLyrics \AEBVerseD
        \context Lyrics = AEBLyricsDAlt \lyricsto AEBVoiceLyrics \AEBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {153}
        \fontsize #6 \center-align \line {Met 'n sagte hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {61}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AECStaffGroup <<
        \context Staff = AECStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AECVoiceLyrics \BBHDGxFAMusicLyrics
            \context Voice = AECVoiceRH \BBHDGxFAMusicRH
        >>
        \new Lyrics  = AECLyricsA
        \new Lyrics = AECLyricsAAlt
        \new Lyrics  = AECLyricsB
        \new Lyrics = AECLyricsBAlt
        \new Lyrics  = AECLyricsC
        \new Lyrics = AECLyricsCAlt
        \context Staff = AECStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AECVoiceLH \BBHDGxFAMusicLH
        >>
        \context Lyrics = AECLyricsA \lyricsto AECVoiceLyrics \AECVerseA
        \context Lyrics = AECLyricsAAlt \lyricsto AECVoiceLyrics \AECVerseAAlt
        \context Lyrics = AECLyricsB \lyricsto AECVoiceLyrics \AECVerseB
        \context Lyrics = AECLyricsBAlt \lyricsto AECVoiceLyrics \AECVerseBAlt
        \context Lyrics = AECLyricsC \lyricsto AECVoiceLyrics \AECVerseC
        \context Lyrics = AECLyricsCAlt \lyricsto AECVoiceLyrics \AECVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {154}
        \fontsize #6 \center-align \line {Met onderworpe hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {264}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEDStaffGroup <<
        \context Staff = AEDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEDVoiceLyrics \BBHDHxBFDMusicLyrics
            \context Voice = AEDVoiceRH \BBHDHxBFDMusicRH
        >>
        \new Lyrics  = AEDLyricsA
        \new Lyrics = AEDLyricsAAlt
        \new Lyrics  = AEDLyricsB
        \new Lyrics = AEDLyricsBAlt
        \new Lyrics  = AEDLyricsC
        \new Lyrics = AEDLyricsCAlt
        \new Lyrics  = AEDLyricsD
        \new Lyrics = AEDLyricsDAlt
        \new Lyrics  = AEDLyricsE
        \new Lyrics = AEDLyricsEAlt
        \new Lyrics  = AEDLyricsF
        \new Lyrics = AEDLyricsFAlt
        \context Staff = AEDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEDVoiceLH \BBHDHxBFDMusicLH
        >>
        \context Lyrics = AEDLyricsA \lyricsto AEDVoiceLyrics \AEDVerseA
        \context Lyrics = AEDLyricsAAlt \lyricsto AEDVoiceLyrics \AEDVerseAAlt
        \context Lyrics = AEDLyricsB \lyricsto AEDVoiceLyrics \AEDVerseB
        \context Lyrics = AEDLyricsBAlt \lyricsto AEDVoiceLyrics \AEDVerseBAlt
        \context Lyrics = AEDLyricsC \lyricsto AEDVoiceLyrics \AEDVerseC
        \context Lyrics = AEDLyricsCAlt \lyricsto AEDVoiceLyrics \AEDVerseCAlt
        \context Lyrics = AEDLyricsD \lyricsto AEDVoiceLyrics \AEDVerseD
        \context Lyrics = AEDLyricsDAlt \lyricsto AEDVoiceLyrics \AEDVerseDAlt
        \context Lyrics = AEDLyricsE \lyricsto AEDVoiceLyrics \AEDVerseE
        \context Lyrics = AEDLyricsEAlt \lyricsto AEDVoiceLyrics \AEDVerseEAlt
        \context Lyrics = AEDLyricsF \lyricsto AEDVoiceLyrics \AEDVerseF
        \context Lyrics = AEDLyricsFAlt \lyricsto AEDVoiceLyrics \AEDVerseFAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {155}
        \fontsize #6 \center-align \line {My hart verlang na niks}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {358}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEEStaffGroup <<
        \context Staff = AEEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEEVoiceLyrics \BBHDIxCEHMusicLyrics
            \context Voice = AEEVoiceRH \BBHDIxCEHMusicRH
        >>
        \new Lyrics  = AEELyricsA
        \new Lyrics = AEELyricsAAlt
        \new Lyrics  = AEELyricsB
        \new Lyrics = AEELyricsBAlt
        \new Lyrics  = AEELyricsC
        \new Lyrics = AEELyricsCAlt
        \context Staff = AEEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEEVoiceLH \BBHDIxCEHMusicLH
        >>
        \context Lyrics = AEELyricsA \lyricsto AEEVoiceLyrics \AEEVerseA
        \context Lyrics = AEELyricsAAlt \lyricsto AEEVoiceLyrics \AEEVerseAAlt
        \context Lyrics = AEELyricsB \lyricsto AEEVoiceLyrics \AEEVerseB
        \context Lyrics = AEELyricsBAlt \lyricsto AEEVoiceLyrics \AEEVerseBAlt
        \context Lyrics = AEELyricsC \lyricsto AEEVoiceLyrics \AEEVerseC
        \context Lyrics = AEELyricsCAlt \lyricsto AEEVoiceLyrics \AEEVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {156}
        \fontsize #6 \center-align \line {My hart vind rus in U}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {244}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEFStaffGroup <<
        \context Staff = AEFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEFVoiceLyrics \BBHEZxBDDMoreSylMusicLyrics
            \context Voice = AEFVoiceRH \BBHEZxBDDMoreSylMusicRH
        >>
        \new Lyrics  = AEFLyricsA
        \new Lyrics = AEFLyricsAAlt
        \new Lyrics  = AEFLyricsB
        \new Lyrics = AEFLyricsBAlt
        \new Lyrics  = AEFLyricsC
        \new Lyrics = AEFLyricsCAlt
        \new Lyrics  = AEFLyricsD
        \new Lyrics = AEFLyricsDAlt
        \context Staff = AEFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEFVoiceLH \BBHEZxBDDMoreSylMusicLH
        >>
        \context Lyrics = AEFLyricsA \lyricsto AEFVoiceLyrics \AEFVerseA
        \context Lyrics = AEFLyricsAAlt \lyricsto AEFVoiceLyrics \AEFVerseAAlt
        \context Lyrics = AEFLyricsB \lyricsto AEFVoiceLyrics \AEFVerseB
        \context Lyrics = AEFLyricsBAlt \lyricsto AEFVoiceLyrics \AEFVerseBAlt
        \context Lyrics = AEFLyricsC \lyricsto AEFVoiceLyrics \AEFVerseC
        \context Lyrics = AEFLyricsCAlt \lyricsto AEFVoiceLyrics \AEFVerseCAlt
        \context Lyrics = AEFLyricsD \lyricsto AEFVoiceLyrics \AEFVerseD
        \context Lyrics = AEFLyricsDAlt \lyricsto AEFVoiceLyrics \AEFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {157}
        \fontsize #6 \center-align \line {My hart vloei oor}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {236}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEGStaffGroup <<
        \context Staff = AEGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEGVoiceLyrics \BBHEAxBCFMusicLyrics
            \context Voice = AEGVoiceRH \BBHEAxBCFMusicRH
        >>
        \new Lyrics  = AEGLyricsA
        \new Lyrics = AEGLyricsAAlt
        \new Lyrics  = AEGLyricsB
        \new Lyrics = AEGLyricsBAlt
        \new Lyrics  = AEGLyricsC
        \new Lyrics = AEGLyricsCAlt
        \new Lyrics  = AEGLyricsD
        \new Lyrics = AEGLyricsDAlt
        \new Lyrics  = AEGLyricsE
        \new Lyrics = AEGLyricsEAlt
        \context Staff = AEGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEGVoiceLH \BBHEAxBCFMusicLH
        >>
        \context Lyrics = AEGLyricsA \lyricsto AEGVoiceLyrics \AEGVerseA
        \context Lyrics = AEGLyricsAAlt \lyricsto AEGVoiceLyrics \AEGVerseAAlt
        \context Lyrics = AEGLyricsB \lyricsto AEGVoiceLyrics \AEGVerseB
        \context Lyrics = AEGLyricsBAlt \lyricsto AEGVoiceLyrics \AEGVerseBAlt
        \context Lyrics = AEGLyricsC \lyricsto AEGVoiceLyrics \AEGVerseC
        \context Lyrics = AEGLyricsCAlt \lyricsto AEGVoiceLyrics \AEGVerseCAlt
        \context Lyrics = AEGLyricsD \lyricsto AEGVoiceLyrics \AEGVerseD
        \context Lyrics = AEGLyricsDAlt \lyricsto AEGVoiceLyrics \AEGVerseDAlt
        \context Lyrics = AEGLyricsE \lyricsto AEGVoiceLyrics \AEGVerseE
        \context Lyrics = AEGLyricsEAlt \lyricsto AEGVoiceLyrics \AEGVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {158}
        \fontsize #6 \center-align \line {My hart was moeg}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {107}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEHStaffGroup <<
        \context Staff = AEHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEHVoiceLyrics \BBHEBxAZGMusicLyrics
            \context Voice = AEHVoiceRH \BBHEBxAZGMusicRH
        >>
        \new Lyrics  = AEHLyricsA
        \new Lyrics = AEHLyricsAAlt
        \new Lyrics  = AEHLyricsB
        \new Lyrics = AEHLyricsBAlt
        \new Lyrics  = AEHLyricsC
        \new Lyrics = AEHLyricsCAlt
        \context Staff = AEHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEHVoiceLH \BBHEBxAZGMusicLH
        >>
        \context Lyrics = AEHLyricsA \lyricsto AEHVoiceLyrics \AEHVerseA
        \context Lyrics = AEHLyricsAAlt \lyricsto AEHVoiceLyrics \AEHVerseAAlt
        \context Lyrics = AEHLyricsB \lyricsto AEHVoiceLyrics \AEHVerseB
        \context Lyrics = AEHLyricsBAlt \lyricsto AEHVoiceLyrics \AEHVerseBAlt
        \context Lyrics = AEHLyricsC \lyricsto AEHVoiceLyrics \AEHVerseC
        \context Lyrics = AEHLyricsCAlt \lyricsto AEHVoiceLyrics \AEHVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {159}
        \fontsize #6 \center-align \line {My Heer, 'n offer wil ek bring}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {286}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AEIStaffGroup <<
        \context Staff = AEIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AEIVoiceLyrics \BBHECxBHFMusicLyrics
            \context Voice = AEIVoiceRH \BBHECxBHFMusicRH
        >>
        \new Lyrics  = AEILyricsA
        \new Lyrics = AEILyricsAAlt
        \new Lyrics  = AEILyricsB
        \new Lyrics = AEILyricsBAlt
        \new Lyrics  = AEILyricsC
        \new Lyrics = AEILyricsCAlt
        \new Lyrics  = AEILyricsD
        \new Lyrics = AEILyricsDAlt
        \context Staff = AEIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AEIVoiceLH \BBHECxBHFMusicLH
        >>
        \context Lyrics = AEILyricsA \lyricsto AEIVoiceLyrics \AEIVerseA
        \context Lyrics = AEILyricsAAlt \lyricsto AEIVoiceLyrics \AEIVerseAAlt
        \context Lyrics = AEILyricsB \lyricsto AEIVoiceLyrics \AEIVerseB
        \context Lyrics = AEILyricsBAlt \lyricsto AEIVoiceLyrics \AEIVerseBAlt
        \context Lyrics = AEILyricsC \lyricsto AEIVoiceLyrics \AEIVerseC
        \context Lyrics = AEILyricsCAlt \lyricsto AEIVoiceLyrics \AEIVerseCAlt
        \context Lyrics = AEILyricsD \lyricsto AEIVoiceLyrics \AEIVerseD
        \context Lyrics = AEILyricsDAlt \lyricsto AEIVoiceLyrics \AEIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {160}
        \fontsize #6 \center-align \line {My Heer se liefde}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {217}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFZStaffGroup <<
        \context Staff = AFZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFZVoiceLyrics \BBHEDxBAGMusicLyrics
            \context Voice = AFZVoiceRH \BBHEDxBAGMusicRH
        >>
        \new Lyrics  = AFZLyricsA
        \new Lyrics = AFZLyricsAAlt
        \new Lyrics  = AFZLyricsB
        \new Lyrics = AFZLyricsBAlt
        \new Lyrics  = AFZLyricsC
        \new Lyrics = AFZLyricsCAlt
        \new Lyrics  = AFZLyricsD
        \new Lyrics = AFZLyricsDAlt
        \context Staff = AFZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFZVoiceLH \BBHEDxBAGMusicLH
        >>
        \context Lyrics = AFZLyricsA \lyricsto AFZVoiceLyrics \AFZVerseA
        \context Lyrics = AFZLyricsAAlt \lyricsto AFZVoiceLyrics \AFZVerseAAlt
        \context Lyrics = AFZLyricsB \lyricsto AFZVoiceLyrics \AFZVerseB
        \context Lyrics = AFZLyricsBAlt \lyricsto AFZVoiceLyrics \AFZVerseBAlt
        \context Lyrics = AFZLyricsC \lyricsto AFZVoiceLyrics \AFZVerseC
        \context Lyrics = AFZLyricsCAlt \lyricsto AFZVoiceLyrics \AFZVerseCAlt
        \context Lyrics = AFZLyricsD \lyricsto AFZVoiceLyrics \AFZVerseD
        \context Lyrics = AFZLyricsDAlt \lyricsto AFZVoiceLyrics \AFZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {161}
        \fontsize #6 \center-align \line {My Heiland, hoe min ek}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {211}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFAStaffGroup <<
        \context Staff = AFAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFAVoiceLyrics \BBHEExBAAMusicLyrics
            \context Voice = AFAVoiceRH \BBHEExBAAMusicRH
        >>
        \new Lyrics  = AFALyricsA
        \new Lyrics = AFALyricsAAlt
        \new Lyrics  = AFALyricsB
        \new Lyrics = AFALyricsBAlt
        \new Lyrics  = AFALyricsC
        \new Lyrics = AFALyricsCAlt
        \new Lyrics  = AFALyricsD
        \new Lyrics = AFALyricsDAlt
        \context Staff = AFAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFAVoiceLH \BBHEExBAAMusicLH
        >>
        \context Lyrics = AFALyricsA \lyricsto AFAVoiceLyrics \AFAVerseA
        \context Lyrics = AFALyricsAAlt \lyricsto AFAVoiceLyrics \AFAVerseAAlt
        \context Lyrics = AFALyricsB \lyricsto AFAVoiceLyrics \AFAVerseB
        \context Lyrics = AFALyricsBAlt \lyricsto AFAVoiceLyrics \AFAVerseBAlt
        \context Lyrics = AFALyricsC \lyricsto AFAVoiceLyrics \AFAVerseC
        \context Lyrics = AFALyricsCAlt \lyricsto AFAVoiceLyrics \AFAVerseCAlt
        \context Lyrics = AFALyricsD \lyricsto AFAVoiceLyrics \AFAVerseD
        \context Lyrics = AFALyricsDAlt \lyricsto AFAVoiceLyrics \AFAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {162}
        \fontsize #6 \center-align \line {My Heiland, U het rus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {314}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFBStaffGroup <<
        \context Staff = AFBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFBVoiceLyrics \BBHEFxCADMusicLyrics
            \context Voice = AFBVoiceRH \BBHEFxCADMusicRH
        >>
        \new Lyrics  = AFBLyricsA
        \new Lyrics = AFBLyricsAAlt
        \new Lyrics  = AFBLyricsB
        \new Lyrics = AFBLyricsBAlt
        \new Lyrics  = AFBLyricsC
        \new Lyrics = AFBLyricsCAlt
        \new Lyrics  = AFBLyricsD
        \new Lyrics = AFBLyricsDAlt
        \new Lyrics  = AFBLyricsE
        \new Lyrics = AFBLyricsEAlt
        \context Staff = AFBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFBVoiceLH \BBHEFxCADMusicLH
        >>
        \context Lyrics = AFBLyricsA \lyricsto AFBVoiceLyrics \AFBVerseA
        \context Lyrics = AFBLyricsAAlt \lyricsto AFBVoiceLyrics \AFBVerseAAlt
        \context Lyrics = AFBLyricsB \lyricsto AFBVoiceLyrics \AFBVerseB
        \context Lyrics = AFBLyricsBAlt \lyricsto AFBVoiceLyrics \AFBVerseBAlt
        \context Lyrics = AFBLyricsC \lyricsto AFBVoiceLyrics \AFBVerseC
        \context Lyrics = AFBLyricsCAlt \lyricsto AFBVoiceLyrics \AFBVerseCAlt
        \context Lyrics = AFBLyricsD \lyricsto AFBVoiceLyrics \AFBVerseD
        \context Lyrics = AFBLyricsDAlt \lyricsto AFBVoiceLyrics \AFBVerseDAlt
        \context Lyrics = AFBLyricsE \lyricsto AFBVoiceLyrics \AFBVerseE
        \context Lyrics = AFBLyricsEAlt \lyricsto AFBVoiceLyrics \AFBVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {163}
        \fontsize #6 \center-align \line {My lew' in Christus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {371}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFCStaffGroup <<
        \context Staff = AFCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFCVoiceLyrics \BBHEGxCGAMusicLyrics
            \context Voice = AFCVoiceRH \BBHEGxCGAMusicRH
        >>
        \new Lyrics  = AFCLyricsA
        \new Lyrics = AFCLyricsAAlt
        \new Lyrics  = AFCLyricsB
        \new Lyrics = AFCLyricsBAlt
        \new Lyrics  = AFCLyricsC
        \new Lyrics = AFCLyricsCAlt
        \new Lyrics  = AFCLyricsD
        \new Lyrics = AFCLyricsDAlt
        \context Staff = AFCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFCVoiceLH \BBHEGxCGAMusicLH
        >>
        \context Lyrics = AFCLyricsA \lyricsto AFCVoiceLyrics \AFCVerseA
        \context Lyrics = AFCLyricsAAlt \lyricsto AFCVoiceLyrics \AFCVerseAAlt
        \context Lyrics = AFCLyricsB \lyricsto AFCVoiceLyrics \AFCVerseB
        \context Lyrics = AFCLyricsBAlt \lyricsto AFCVoiceLyrics \AFCVerseBAlt
        \context Lyrics = AFCLyricsC \lyricsto AFCVoiceLyrics \AFCVerseC
        \context Lyrics = AFCLyricsCAlt \lyricsto AFCVoiceLyrics \AFCVerseCAlt
        \context Lyrics = AFCLyricsD \lyricsto AFCVoiceLyrics \AFCVerseD
        \context Lyrics = AFCLyricsDAlt \lyricsto AFCVoiceLyrics \AFCVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {164}
        \fontsize #6 \center-align \line {My Meester spreek}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {282}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFDStaffGroup <<
        \context Staff = AFDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFDVoiceLyrics \BBHEHxBHBMusicLyrics
            \context Voice = AFDVoiceRH \BBHEHxBHBMusicRH
        >>
        \new Lyrics  = AFDLyricsA
        \new Lyrics = AFDLyricsAAlt
        \new Lyrics  = AFDLyricsB
        \new Lyrics = AFDLyricsBAlt
        \new Lyrics  = AFDLyricsC
        \new Lyrics = AFDLyricsCAlt
        \new Lyrics  = AFDLyricsD
        \new Lyrics = AFDLyricsDAlt
        \context Staff = AFDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFDVoiceLH \BBHEHxBHBMusicLH
        >>
        \context Lyrics = AFDLyricsA \lyricsto AFDVoiceLyrics \AFDVerseA
        \context Lyrics = AFDLyricsAAlt \lyricsto AFDVoiceLyrics \AFDVerseAAlt
        \context Lyrics = AFDLyricsB \lyricsto AFDVoiceLyrics \AFDVerseB
        \context Lyrics = AFDLyricsBAlt \lyricsto AFDVoiceLyrics \AFDVerseBAlt
        \context Lyrics = AFDLyricsC \lyricsto AFDVoiceLyrics \AFDVerseC
        \context Lyrics = AFDLyricsCAlt \lyricsto AFDVoiceLyrics \AFDVerseCAlt
        \context Lyrics = AFDLyricsD \lyricsto AFDVoiceLyrics \AFDVerseD
        \context Lyrics = AFDLyricsDAlt \lyricsto AFDVoiceLyrics \AFDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {165}
        \fontsize #6 \center-align \line {My toevlug en hoop}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {295}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFEStaffGroup <<
        \context Staff = AFEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFEVoiceLyrics \BBHEIxBIEMusicLyrics
            \context Voice = AFEVoiceRH \BBHEIxBIEMusicRH
        >>
        \new Lyrics  = AFELyricsA
        \new Lyrics = AFELyricsAAlt
        \new Lyrics  = AFELyricsB
        \new Lyrics = AFELyricsBAlt
        \new Lyrics  = AFELyricsC
        \new Lyrics = AFELyricsCAlt
        \new Lyrics  = AFELyricsD
        \new Lyrics = AFELyricsDAlt
        \context Staff = AFEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFEVoiceLH \BBHEIxBIEMusicLH
        >>
        \context Lyrics = AFELyricsA \lyricsto AFEVoiceLyrics \AFEVerseA
        \context Lyrics = AFELyricsAAlt \lyricsto AFEVoiceLyrics \AFEVerseAAlt
        \context Lyrics = AFELyricsB \lyricsto AFEVoiceLyrics \AFEVerseB
        \context Lyrics = AFELyricsBAlt \lyricsto AFEVoiceLyrics \AFEVerseBAlt
        \context Lyrics = AFELyricsC \lyricsto AFEVoiceLyrics \AFEVerseC
        \context Lyrics = AFELyricsCAlt \lyricsto AFEVoiceLyrics \AFEVerseCAlt
        \context Lyrics = AFELyricsD \lyricsto AFEVoiceLyrics \AFEVerseD
        \context Lyrics = AFELyricsDAlt \lyricsto AFEVoiceLyrics \AFEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {166}
        \fontsize #6 \center-align \line {My tye in U hand}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {14}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFFStaffGroup <<
        \context Staff = AFFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFFVoiceLyrics \BBHFZxADMusicLyrics
            \context Voice = AFFVoiceRH \BBHFZxADMusicRH
        >>
        \new Lyrics  = AFFLyricsA
        \new Lyrics = AFFLyricsAAlt
        \new Lyrics  = AFFLyricsB
        \new Lyrics = AFFLyricsBAlt
        \new Lyrics  = AFFLyricsC
        \new Lyrics = AFFLyricsCAlt
        \new Lyrics  = AFFLyricsD
        \new Lyrics = AFFLyricsDAlt
        \new Lyrics  = AFFLyricsE
        \new Lyrics = AFFLyricsEAlt
        \context Staff = AFFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFFVoiceLH \BBHFZxADMusicLH
        >>
        \context Lyrics = AFFLyricsA \lyricsto AFFVoiceLyrics \AFFVerseA
        \context Lyrics = AFFLyricsAAlt \lyricsto AFFVoiceLyrics \AFFVerseAAlt
        \context Lyrics = AFFLyricsB \lyricsto AFFVoiceLyrics \AFFVerseB
        \context Lyrics = AFFLyricsBAlt \lyricsto AFFVoiceLyrics \AFFVerseBAlt
        \context Lyrics = AFFLyricsC \lyricsto AFFVoiceLyrics \AFFVerseC
        \context Lyrics = AFFLyricsCAlt \lyricsto AFFVoiceLyrics \AFFVerseCAlt
        \context Lyrics = AFFLyricsD \lyricsto AFFVoiceLyrics \AFFVerseD
        \context Lyrics = AFFLyricsDAlt \lyricsto AFFVoiceLyrics \AFFVerseDAlt
        \context Lyrics = AFFLyricsE \lyricsto AFFVoiceLyrics \AFFVerseE
        \context Lyrics = AFFLyricsEAlt \lyricsto AFFVoiceLyrics \AFFVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {167}
        \fontsize #6 \center-align \line {'n Kleine wyl die kruis}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {396}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFGStaffGroup <<
        \context Staff = AFGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFGVoiceLyrics \BBHFAxCIFMusicLyrics
            \context Voice = AFGVoiceRH \BBHFAxCIFMusicRH
        >>
        \new Lyrics  = AFGLyricsA
        \new Lyrics = AFGLyricsAAlt
        \new Lyrics  = AFGLyricsB
        \new Lyrics = AFGLyricsBAlt
        \new Lyrics  = AFGLyricsC
        \new Lyrics = AFGLyricsCAlt
        \new Lyrics  = AFGLyricsD
        \new Lyrics = AFGLyricsDAlt
        \context Staff = AFGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFGVoiceLH \BBHFAxCIFMusicLH
        >>
        \context Lyrics = AFGLyricsA \lyricsto AFGVoiceLyrics \AFGVerseA
        \context Lyrics = AFGLyricsAAlt \lyricsto AFGVoiceLyrics \AFGVerseAAlt
        \context Lyrics = AFGLyricsB \lyricsto AFGVoiceLyrics \AFGVerseB
        \context Lyrics = AFGLyricsBAlt \lyricsto AFGVoiceLyrics \AFGVerseBAlt
        \context Lyrics = AFGLyricsC \lyricsto AFGVoiceLyrics \AFGVerseC
        \context Lyrics = AFGLyricsCAlt \lyricsto AFGVoiceLyrics \AFGVerseCAlt
        \context Lyrics = AFGLyricsD \lyricsto AFGVoiceLyrics \AFGVerseD
        \context Lyrics = AFGLyricsDAlt \lyricsto AFGVoiceLyrics \AFGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {168}
        \fontsize #6 \center-align \line {'n Lewe van oorwinning}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {294}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFHStaffGroup <<
        \context Staff = AFHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFHVoiceLyrics \BBHFBxBIDMusicLyrics
            \context Voice = AFHVoiceRH \BBHFBxBIDMusicRH
        >>
        \new Lyrics  = AFHLyricsA
        \new Lyrics = AFHLyricsAAlt
        \new Lyrics  = AFHLyricsB
        \new Lyrics = AFHLyricsBAlt
        \new Lyrics  = AFHLyricsC
        \new Lyrics = AFHLyricsCAlt
        \new Lyrics  = AFHLyricsD
        \new Lyrics = AFHLyricsDAlt
        \context Staff = AFHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFHVoiceLH \BBHFBxBIDMusicLH
        >>
        \context Lyrics = AFHLyricsA \lyricsto AFHVoiceLyrics \AFHVerseA
        \context Lyrics = AFHLyricsAAlt \lyricsto AFHVoiceLyrics \AFHVerseAAlt
        \context Lyrics = AFHLyricsB \lyricsto AFHVoiceLyrics \AFHVerseB
        \context Lyrics = AFHLyricsBAlt \lyricsto AFHVoiceLyrics \AFHVerseBAlt
        \context Lyrics = AFHLyricsC \lyricsto AFHVoiceLyrics \AFHVerseC
        \context Lyrics = AFHLyricsCAlt \lyricsto AFHVoiceLyrics \AFHVerseCAlt
        \context Lyrics = AFHLyricsD \lyricsto AFHVoiceLyrics \AFHVerseD
        \context Lyrics = AFHLyricsDAlt \lyricsto AFHVoiceLyrics \AFHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {169}
        \fontsize #6 \center-align \line {Naby die hemel}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {168}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AFIStaffGroup <<
        \context Staff = AFIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AFIVoiceLyrics \BBHFCxAFGMusicLyrics
            \context Voice = AFIVoiceRH \BBHFCxAFGMusicRH
        >>
        \new Lyrics  = AFILyricsA
        \new Lyrics = AFILyricsAAlt
        \new Lyrics  = AFILyricsB
        \new Lyrics = AFILyricsBAlt
        \new Lyrics  = AFILyricsC
        \new Lyrics = AFILyricsCAlt
        \context Staff = AFIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AFIVoiceLH \BBHFCxAFGMusicLH
        >>
        \context Lyrics = AFILyricsA \lyricsto AFIVoiceLyrics \AFIVerseA
        \context Lyrics = AFILyricsAAlt \lyricsto AFIVoiceLyrics \AFIVerseAAlt
        \context Lyrics = AFILyricsB \lyricsto AFIVoiceLyrics \AFIVerseB
        \context Lyrics = AFILyricsBAlt \lyricsto AFIVoiceLyrics \AFIVerseBAlt
        \context Lyrics = AFILyricsC \lyricsto AFIVoiceLyrics \AFIVerseC
        \context Lyrics = AFILyricsCAlt \lyricsto AFIVoiceLyrics \AFIVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {170}
        \fontsize #6 \center-align \line {Nader steeds nader}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {125}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGZStaffGroup <<
        \context Staff = AGZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGZVoiceLyrics \BBHFDxABEMusicLyrics
            \context Voice = AGZVoiceRH \BBHFDxABEMusicRH
        >>
        \new Lyrics  = AGZLyricsA
        \new Lyrics = AGZLyricsAAlt
        \new Lyrics  = AGZLyricsB
        \new Lyrics = AGZLyricsBAlt
        \new Lyrics  = AGZLyricsC
        \new Lyrics = AGZLyricsCAlt
        \new Lyrics  = AGZLyricsD
        \new Lyrics = AGZLyricsDAlt
        \context Staff = AGZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGZVoiceLH \BBHFDxABEMusicLH
        >>
        \context Lyrics = AGZLyricsA \lyricsto AGZVoiceLyrics \AGZVerseA
        \context Lyrics = AGZLyricsAAlt \lyricsto AGZVoiceLyrics \AGZVerseAAlt
        \context Lyrics = AGZLyricsB \lyricsto AGZVoiceLyrics \AGZVerseB
        \context Lyrics = AGZLyricsBAlt \lyricsto AGZVoiceLyrics \AGZVerseBAlt
        \context Lyrics = AGZLyricsC \lyricsto AGZVoiceLyrics \AGZVerseC
        \context Lyrics = AGZLyricsCAlt \lyricsto AGZVoiceLyrics \AGZVerseCAlt
        \context Lyrics = AGZLyricsD \lyricsto AGZVoiceLyrics \AGZVerseD
        \context Lyrics = AGZLyricsDAlt \lyricsto AGZVoiceLyrics \AGZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {171}
        \fontsize #6 \center-align \line {Ned'rig aan U voete}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {201}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGAStaffGroup <<
        \context Staff = AGAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGAVoiceLyrics \BBHFExBZZMusicLyrics
            \context Voice = AGAVoiceRH \BBHFExBZZMusicRH
        >>
        \new Lyrics  = AGALyricsA
        \new Lyrics = AGALyricsAAlt
        \new Lyrics  = AGALyricsB
        \new Lyrics = AGALyricsBAlt
        \new Lyrics  = AGALyricsC
        \new Lyrics = AGALyricsCAlt
        \context Staff = AGAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGAVoiceLH \BBHFExBZZMusicLH
        >>
        \context Lyrics = AGALyricsA \lyricsto AGAVoiceLyrics \AGAVerseA
        \context Lyrics = AGALyricsAAlt \lyricsto AGAVoiceLyrics \AGAVerseAAlt
        \context Lyrics = AGALyricsB \lyricsto AGAVoiceLyrics \AGAVerseB
        \context Lyrics = AGALyricsBAlt \lyricsto AGAVoiceLyrics \AGAVerseBAlt
        \context Lyrics = AGALyricsC \lyricsto AGAVoiceLyrics \AGAVerseC
        \context Lyrics = AGALyricsCAlt \lyricsto AGAVoiceLyrics \AGAVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {172}
        \fontsize #6 \center-align \line {Neem die wêreld}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {146}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGBStaffGroup <<
        \context Staff = AGBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGBVoiceLyrics \BBHFFxADFMusicLyrics
            \context Voice = AGBVoiceRH \BBHFFxADFMusicRH
        >>
        \new Lyrics  = AGBLyricsA
        \new Lyrics = AGBLyricsAAlt
        \new Lyrics  = AGBLyricsB
        \new Lyrics = AGBLyricsBAlt
        \new Lyrics  = AGBLyricsC
        \new Lyrics = AGBLyricsCAlt
        \new Lyrics  = AGBLyricsD
        \new Lyrics = AGBLyricsDAlt
        \context Staff = AGBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGBVoiceLH \BBHFFxADFMusicLH
        >>
        \context Lyrics = AGBLyricsA \lyricsto AGBVoiceLyrics \AGBVerseA
        \context Lyrics = AGBLyricsAAlt \lyricsto AGBVoiceLyrics \AGBVerseAAlt
        \context Lyrics = AGBLyricsB \lyricsto AGBVoiceLyrics \AGBVerseB
        \context Lyrics = AGBLyricsBAlt \lyricsto AGBVoiceLyrics \AGBVerseBAlt
        \context Lyrics = AGBLyricsC \lyricsto AGBVoiceLyrics \AGBVerseC
        \context Lyrics = AGBLyricsCAlt \lyricsto AGBVoiceLyrics \AGBVerseCAlt
        \context Lyrics = AGBLyricsD \lyricsto AGBVoiceLyrics \AGBVerseD
        \context Lyrics = AGBLyricsDAlt \lyricsto AGBVoiceLyrics \AGBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {173}
        \fontsize #6 \center-align \line {Neem een tree met Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {44}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGCStaffGroup <<
        \context Staff = AGCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGCVoiceLyrics \BBHFGxDDMusicLyrics
            \context Voice = AGCVoiceRH \BBHFGxDDMusicRH
        >>
        \new Lyrics  = AGCLyricsA
        \new Lyrics = AGCLyricsAAlt
        \new Lyrics  = AGCLyricsB
        \new Lyrics = AGCLyricsBAlt
        \new Lyrics  = AGCLyricsC
        \new Lyrics = AGCLyricsCAlt
        \new Lyrics  = AGCLyricsD
        \new Lyrics = AGCLyricsDAlt
        \context Staff = AGCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGCVoiceLH \BBHFGxDDMusicLH
        >>
        \context Lyrics = AGCLyricsA \lyricsto AGCVoiceLyrics \AGCVerseA
        \context Lyrics = AGCLyricsAAlt \lyricsto AGCVoiceLyrics \AGCVerseAAlt
        \context Lyrics = AGCLyricsB \lyricsto AGCVoiceLyrics \AGCVerseB
        \context Lyrics = AGCLyricsBAlt \lyricsto AGCVoiceLyrics \AGCVerseBAlt
        \context Lyrics = AGCLyricsC \lyricsto AGCVoiceLyrics \AGCVerseC
        \context Lyrics = AGCLyricsCAlt \lyricsto AGCVoiceLyrics \AGCVerseCAlt
        \context Lyrics = AGCLyricsD \lyricsto AGCVoiceLyrics \AGCVerseD
        \context Lyrics = AGCLyricsDAlt \lyricsto AGCVoiceLyrics \AGCVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {174}
        \fontsize #6 \center-align \line {Neem op u kruis}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {96}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGDStaffGroup <<
        \context Staff = AGDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGDVoiceLyrics \BBHFHxIEMusicLyrics
            \context Voice = AGDVoiceRH \BBHFHxIEMusicRH
        >>
        \new Lyrics  = AGDLyricsA
        \new Lyrics = AGDLyricsAAlt
        \new Lyrics  = AGDLyricsB
        \new Lyrics = AGDLyricsBAlt
        \new Lyrics  = AGDLyricsC
        \new Lyrics = AGDLyricsCAlt
        \new Lyrics  = AGDLyricsD
        \new Lyrics = AGDLyricsDAlt
        \context Staff = AGDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGDVoiceLH \BBHFHxIEMusicLH
        >>
        \context Lyrics = AGDLyricsA \lyricsto AGDVoiceLyrics \AGDVerseA
        \context Lyrics = AGDLyricsAAlt \lyricsto AGDVoiceLyrics \AGDVerseAAlt
        \context Lyrics = AGDLyricsB \lyricsto AGDVoiceLyrics \AGDVerseB
        \context Lyrics = AGDLyricsBAlt \lyricsto AGDVoiceLyrics \AGDVerseBAlt
        \context Lyrics = AGDLyricsC \lyricsto AGDVoiceLyrics \AGDVerseC
        \context Lyrics = AGDLyricsCAlt \lyricsto AGDVoiceLyrics \AGDVerseCAlt
        \context Lyrics = AGDLyricsD \lyricsto AGDVoiceLyrics \AGDVerseD
        \context Lyrics = AGDLyricsDAlt \lyricsto AGDVoiceLyrics \AGDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {175}
        \fontsize #6 \center-align \line {Neem tyd, o verloste}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {16 Old Eng}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGEStaffGroup <<
        \context Staff = AGEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGEVoiceLyrics \BBHFIxAFOLDMusicLyrics
            \context Voice = AGEVoiceRH \BBHFIxAFOLDMusicRH
        >>
        \new Lyrics  = AGELyricsA
        \new Lyrics = AGELyricsAAlt
        \new Lyrics  = AGELyricsB
        \new Lyrics = AGELyricsBAlt
        \new Lyrics  = AGELyricsC
        \new Lyrics = AGELyricsCAlt
        \new Lyrics  = AGELyricsD
        \new Lyrics = AGELyricsDAlt
        \context Staff = AGEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGEVoiceLH \BBHFIxAFOLDMusicLH
        >>
        \context Lyrics = AGELyricsA \lyricsto AGEVoiceLyrics \AGEVerseA
        \context Lyrics = AGELyricsAAlt \lyricsto AGEVoiceLyrics \AGEVerseAAlt
        \context Lyrics = AGELyricsB \lyricsto AGEVoiceLyrics \AGEVerseB
        \context Lyrics = AGELyricsBAlt \lyricsto AGEVoiceLyrics \AGEVerseBAlt
        \context Lyrics = AGELyricsC \lyricsto AGEVoiceLyrics \AGEVerseC
        \context Lyrics = AGELyricsCAlt \lyricsto AGEVoiceLyrics \AGEVerseCAlt
        \context Lyrics = AGELyricsD \lyricsto AGEVoiceLyrics \AGEVerseD
        \context Lyrics = AGELyricsDAlt \lyricsto AGEVoiceLyrics \AGEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {176}
        \fontsize #6 \center-align \line {Neig nou u oor en kom}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {155}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGFStaffGroup <<
        \context Staff = AGFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGFVoiceLyrics \BBHGZxAEEMusicLyrics
            \context Voice = AGFVoiceRH \BBHGZxAEEMusicRH
        >>
        \new Lyrics  = AGFLyricsA
        \new Lyrics = AGFLyricsAAlt
        \new Lyrics  = AGFLyricsB
        \new Lyrics = AGFLyricsBAlt
        \new Lyrics  = AGFLyricsC
        \new Lyrics = AGFLyricsCAlt
        \new Lyrics  = AGFLyricsD
        \new Lyrics = AGFLyricsDAlt
        \context Staff = AGFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGFVoiceLH \BBHGZxAEEMusicLH
        >>
        \context Lyrics = AGFLyricsA \lyricsto AGFVoiceLyrics \AGFVerseA
        \context Lyrics = AGFLyricsAAlt \lyricsto AGFVoiceLyrics \AGFVerseAAlt
        \context Lyrics = AGFLyricsB \lyricsto AGFVoiceLyrics \AGFVerseB
        \context Lyrics = AGFLyricsBAlt \lyricsto AGFVoiceLyrics \AGFVerseBAlt
        \context Lyrics = AGFLyricsC \lyricsto AGFVoiceLyrics \AGFVerseC
        \context Lyrics = AGFLyricsCAlt \lyricsto AGFVoiceLyrics \AGFVerseCAlt
        \context Lyrics = AGFLyricsD \lyricsto AGFVoiceLyrics \AGFVerseD
        \context Lyrics = AGFLyricsDAlt \lyricsto AGFVoiceLyrics \AGFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {177}
        \fontsize #6 \center-align \line {Neig tog U oor na my}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {14}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGGStaffGroup <<
        \context Staff = AGGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGGVoiceLyrics \BBHGAxADMusicLyrics
            \context Voice = AGGVoiceRH \BBHGAxADMusicRH
        >>
        \new Lyrics  = AGGLyricsA
        \new Lyrics = AGGLyricsAAlt
        \new Lyrics  = AGGLyricsB
        \new Lyrics = AGGLyricsBAlt
        \new Lyrics  = AGGLyricsC
        \new Lyrics = AGGLyricsCAlt
        \new Lyrics  = AGGLyricsD
        \new Lyrics = AGGLyricsDAlt
        \new Lyrics  = AGGLyricsE
        \new Lyrics = AGGLyricsEAlt
        \context Staff = AGGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGGVoiceLH \BBHGAxADMusicLH
        >>
        \context Lyrics = AGGLyricsA \lyricsto AGGVoiceLyrics \AGGVerseA
        \context Lyrics = AGGLyricsAAlt \lyricsto AGGVoiceLyrics \AGGVerseAAlt
        \context Lyrics = AGGLyricsB \lyricsto AGGVoiceLyrics \AGGVerseB
        \context Lyrics = AGGLyricsBAlt \lyricsto AGGVoiceLyrics \AGGVerseBAlt
        \context Lyrics = AGGLyricsC \lyricsto AGGVoiceLyrics \AGGVerseC
        \context Lyrics = AGGLyricsCAlt \lyricsto AGGVoiceLyrics \AGGVerseCAlt
        \context Lyrics = AGGLyricsD \lyricsto AGGVoiceLyrics \AGGVerseD
        \context Lyrics = AGGLyricsDAlt \lyricsto AGGVoiceLyrics \AGGVerseDAlt
        \context Lyrics = AGGLyricsE \lyricsto AGGVoiceLyrics \AGGVerseE
        \context Lyrics = AGGLyricsEAlt \lyricsto AGGVoiceLyrics \AGGVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {178}
        \fontsize #6 \center-align \line {Net soos ek is}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {158}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGHStaffGroup <<
        \context Staff = AGHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGHVoiceLyrics \BBHGBxAEHMusicLyrics
            \context Voice = AGHVoiceRH \BBHGBxAEHMusicRH
        >>
        \new Lyrics  = AGHLyricsA
        \new Lyrics = AGHLyricsAAlt
        \new Lyrics  = AGHLyricsB
        \new Lyrics = AGHLyricsBAlt
        \new Lyrics  = AGHLyricsC
        \new Lyrics = AGHLyricsCAlt
        \new Lyrics  = AGHLyricsD
        \new Lyrics = AGHLyricsDAlt
        \context Staff = AGHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGHVoiceLH \BBHGBxAEHMusicLH
        >>
        \context Lyrics = AGHLyricsA \lyricsto AGHVoiceLyrics \AGHVerseA
        \context Lyrics = AGHLyricsAAlt \lyricsto AGHVoiceLyrics \AGHVerseAAlt
        \context Lyrics = AGHLyricsB \lyricsto AGHVoiceLyrics \AGHVerseB
        \context Lyrics = AGHLyricsBAlt \lyricsto AGHVoiceLyrics \AGHVerseBAlt
        \context Lyrics = AGHLyricsC \lyricsto AGHVoiceLyrics \AGHVerseC
        \context Lyrics = AGHLyricsCAlt \lyricsto AGHVoiceLyrics \AGHVerseCAlt
        \context Lyrics = AGHLyricsD \lyricsto AGHVoiceLyrics \AGHVerseD
        \context Lyrics = AGHLyricsDAlt \lyricsto AGHVoiceLyrics \AGHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {179}
        \fontsize #6 \center-align \line {Nie na wysheid of roem}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {337}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AGIStaffGroup <<
        \context Staff = AGIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AGIVoiceLyrics \BBHGCxCCGMusicLyrics
            \context Voice = AGIVoiceRH \BBHGCxCCGMusicRH
        >>
        \new Lyrics  = AGILyricsA
        \new Lyrics = AGILyricsAAlt
        \new Lyrics  = AGILyricsB
        \new Lyrics = AGILyricsBAlt
        \new Lyrics  = AGILyricsC
        \new Lyrics = AGILyricsCAlt
        \context Staff = AGIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AGIVoiceLH \BBHGCxCCGMusicLH
        >>
        \context Lyrics = AGILyricsA \lyricsto AGIVoiceLyrics \AGIVerseA
        \context Lyrics = AGILyricsAAlt \lyricsto AGIVoiceLyrics \AGIVerseAAlt
        \context Lyrics = AGILyricsB \lyricsto AGIVoiceLyrics \AGIVerseB
        \context Lyrics = AGILyricsBAlt \lyricsto AGIVoiceLyrics \AGIVerseBAlt
        \context Lyrics = AGILyricsC \lyricsto AGIVoiceLyrics \AGIVerseC
        \context Lyrics = AGILyricsCAlt \lyricsto AGIVoiceLyrics \AGIVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {180}
        \fontsize #6 \center-align \line {Nie verlos deur goud}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {19}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHZStaffGroup <<
        \context Staff = AHZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHZVoiceLyrics \BBHGDxAIMusicLyrics
            \context Voice = AHZVoiceRH \BBHGDxAIMusicRH
        >>
        \new Lyrics  = AHZLyricsA
        \new Lyrics = AHZLyricsAAlt
        \new Lyrics  = AHZLyricsB
        \new Lyrics = AHZLyricsBAlt
        \new Lyrics  = AHZLyricsC
        \new Lyrics = AHZLyricsCAlt
        \new Lyrics  = AHZLyricsD
        \new Lyrics = AHZLyricsDAlt
        \context Staff = AHZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHZVoiceLH \BBHGDxAIMusicLH
        >>
        \context Lyrics = AHZLyricsA \lyricsto AHZVoiceLyrics \AHZVerseA
        \context Lyrics = AHZLyricsAAlt \lyricsto AHZVoiceLyrics \AHZVerseAAlt
        \context Lyrics = AHZLyricsB \lyricsto AHZVoiceLyrics \AHZVerseB
        \context Lyrics = AHZLyricsBAlt \lyricsto AHZVoiceLyrics \AHZVerseBAlt
        \context Lyrics = AHZLyricsC \lyricsto AHZVoiceLyrics \AHZVerseC
        \context Lyrics = AHZLyricsCAlt \lyricsto AHZVoiceLyrics \AHZVerseCAlt
        \context Lyrics = AHZLyricsD \lyricsto AHZVoiceLyrics \AHZVerseD
        \context Lyrics = AHZLyricsDAlt \lyricsto AHZVoiceLyrics \AHZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {181}
        \fontsize #6 \center-align \line {Nog onbeslote, let op u hart}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {167}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHAStaffGroup <<
        \context Staff = AHAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHAVoiceLyrics \BBHGExAFGMusicLyrics
            \context Voice = AHAVoiceRH \BBHGExAFGMusicRH
        >>
        \new Lyrics  = AHALyricsA
        \new Lyrics = AHALyricsAAlt
        \new Lyrics  = AHALyricsB
        \new Lyrics = AHALyricsBAlt
        \new Lyrics  = AHALyricsC
        \new Lyrics = AHALyricsCAlt
        \context Staff = AHAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHAVoiceLH \BBHGExAFGMusicLH
        >>
        \context Lyrics = AHALyricsA \lyricsto AHAVoiceLyrics \AHAVerseA
        \context Lyrics = AHALyricsAAlt \lyricsto AHAVoiceLyrics \AHAVerseAAlt
        \context Lyrics = AHALyricsB \lyricsto AHAVoiceLyrics \AHAVerseB
        \context Lyrics = AHALyricsBAlt \lyricsto AHAVoiceLyrics \AHAVerseBAlt
        \context Lyrics = AHALyricsC \lyricsto AHAVoiceLyrics \AHAVerseC
        \context Lyrics = AHALyricsCAlt \lyricsto AHAVoiceLyrics \AHAVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {182}
        \fontsize #6 \center-align \line {O Dierbaar' Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {180}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHBStaffGroup <<
        \context Staff = AHBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHBVoiceLyrics \BBHGFxAHZMusicLyrics
            \context Voice = AHBVoiceRH \BBHGFxAHZMusicRH
        >>
        \new Lyrics  = AHBLyricsA
        \new Lyrics = AHBLyricsAAlt
        \new Lyrics  = AHBLyricsB
        \new Lyrics = AHBLyricsBAlt
        \new Lyrics  = AHBLyricsC
        \new Lyrics = AHBLyricsCAlt
        \new Lyrics  = AHBLyricsD
        \new Lyrics = AHBLyricsDAlt
        \context Staff = AHBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHBVoiceLH \BBHGFxAHZMusicLH
        >>
        \context Lyrics = AHBLyricsA \lyricsto AHBVoiceLyrics \AHBVerseA
        \context Lyrics = AHBLyricsAAlt \lyricsto AHBVoiceLyrics \AHBVerseAAlt
        \context Lyrics = AHBLyricsB \lyricsto AHBVoiceLyrics \AHBVerseB
        \context Lyrics = AHBLyricsBAlt \lyricsto AHBVoiceLyrics \AHBVerseBAlt
        \context Lyrics = AHBLyricsC \lyricsto AHBVoiceLyrics \AHBVerseC
        \context Lyrics = AHBLyricsCAlt \lyricsto AHBVoiceLyrics \AHBVerseCAlt
        \context Lyrics = AHBLyricsD \lyricsto AHBVoiceLyrics \AHBVerseD
        \context Lyrics = AHBLyricsDAlt \lyricsto AHBVoiceLyrics \AHBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {183}
        \fontsize #6 \center-align \line {O God van Bet-el}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {12}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHCStaffGroup <<
        \context Staff = AHCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHCVoiceLyrics \BBHGGxABMusicLyrics
            \context Voice = AHCVoiceRH \BBHGGxABMusicRH
        >>
        \new Lyrics  = AHCLyricsA
        \new Lyrics = AHCLyricsAAlt
        \new Lyrics  = AHCLyricsB
        \new Lyrics = AHCLyricsBAlt
        \new Lyrics  = AHCLyricsC
        \new Lyrics = AHCLyricsCAlt
        \new Lyrics  = AHCLyricsD
        \new Lyrics = AHCLyricsDAlt
        \new Lyrics  = AHCLyricsE
        \new Lyrics = AHCLyricsEAlt
        \context Staff = AHCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHCVoiceLH \BBHGGxABMusicLH
        >>
        \context Lyrics = AHCLyricsA \lyricsto AHCVoiceLyrics \AHCVerseA
        \context Lyrics = AHCLyricsAAlt \lyricsto AHCVoiceLyrics \AHCVerseAAlt
        \context Lyrics = AHCLyricsB \lyricsto AHCVoiceLyrics \AHCVerseB
        \context Lyrics = AHCLyricsBAlt \lyricsto AHCVoiceLyrics \AHCVerseBAlt
        \context Lyrics = AHCLyricsC \lyricsto AHCVoiceLyrics \AHCVerseC
        \context Lyrics = AHCLyricsCAlt \lyricsto AHCVoiceLyrics \AHCVerseCAlt
        \context Lyrics = AHCLyricsD \lyricsto AHCVoiceLyrics \AHCVerseD
        \context Lyrics = AHCLyricsDAlt \lyricsto AHCVoiceLyrics \AHCVerseDAlt
        \context Lyrics = AHCLyricsE \lyricsto AHCVoiceLyrics \AHCVerseE
        \context Lyrics = AHCLyricsEAlt \lyricsto AHCVoiceLyrics \AHCVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {184}
        \fontsize #6 \center-align \line {O Heer, ek dank U}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {237}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHDStaffGroup <<
        \context Staff = AHDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHDVoiceLyrics \BBHGHxBCGMusicLyrics
            \context Voice = AHDVoiceRH \BBHGHxBCGMusicRH
        >>
        \new Lyrics  = AHDLyricsA
        \new Lyrics = AHDLyricsAAlt
        \new Lyrics  = AHDLyricsB
        \new Lyrics = AHDLyricsBAlt
        \new Lyrics  = AHDLyricsC
        \new Lyrics = AHDLyricsCAlt
        \new Lyrics  = AHDLyricsD
        \new Lyrics = AHDLyricsDAlt
        \context Staff = AHDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHDVoiceLH \BBHGHxBCGMusicLH
        >>
        \context Lyrics = AHDLyricsA \lyricsto AHDVoiceLyrics \AHDVerseA
        \context Lyrics = AHDLyricsAAlt \lyricsto AHDVoiceLyrics \AHDVerseAAlt
        \context Lyrics = AHDLyricsB \lyricsto AHDVoiceLyrics \AHDVerseB
        \context Lyrics = AHDLyricsBAlt \lyricsto AHDVoiceLyrics \AHDVerseBAlt
        \context Lyrics = AHDLyricsC \lyricsto AHDVoiceLyrics \AHDVerseC
        \context Lyrics = AHDLyricsCAlt \lyricsto AHDVoiceLyrics \AHDVerseCAlt
        \context Lyrics = AHDLyricsD \lyricsto AHDVoiceLyrics \AHDVerseD
        \context Lyrics = AHDLyricsDAlt \lyricsto AHDVoiceLyrics \AHDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {185}
        \fontsize #6 \center-align \line {Ons God, ons Vader}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {183}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHEStaffGroup <<
        \context Staff = AHEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHEVoiceLyrics \BBHGIxAHCMusicLyrics
            \context Voice = AHEVoiceRH \BBHGIxAHCMusicRH
        >>
        \new Lyrics  = AHELyricsA
        \new Lyrics = AHELyricsAAlt
        \new Lyrics  = AHELyricsB
        \new Lyrics = AHELyricsBAlt
        \new Lyrics  = AHELyricsC
        \new Lyrics = AHELyricsCAlt
        \new Lyrics  = AHELyricsD
        \new Lyrics = AHELyricsDAlt
        \new Lyrics  = AHELyricsE
        \new Lyrics = AHELyricsEAlt
        \context Staff = AHEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHEVoiceLH \BBHGIxAHCMusicLH
        >>
        \context Lyrics = AHELyricsA \lyricsto AHEVoiceLyrics \AHEVerseA
        \context Lyrics = AHELyricsAAlt \lyricsto AHEVoiceLyrics \AHEVerseAAlt
        \context Lyrics = AHELyricsB \lyricsto AHEVoiceLyrics \AHEVerseB
        \context Lyrics = AHELyricsBAlt \lyricsto AHEVoiceLyrics \AHEVerseBAlt
        \context Lyrics = AHELyricsC \lyricsto AHEVoiceLyrics \AHEVerseC
        \context Lyrics = AHELyricsCAlt \lyricsto AHEVoiceLyrics \AHEVerseCAlt
        \context Lyrics = AHELyricsD \lyricsto AHEVoiceLyrics \AHEVerseD
        \context Lyrics = AHELyricsDAlt \lyricsto AHEVoiceLyrics \AHEVerseDAlt
        \context Lyrics = AHELyricsE \lyricsto AHEVoiceLyrics \AHEVerseE
        \context Lyrics = AHELyricsEAlt \lyricsto AHEVoiceLyrics \AHEVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {186}
        \fontsize #6 \center-align \line {O Heiland, stuur U vrede}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {315}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHFStaffGroup <<
        \context Staff = AHFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHFVoiceLyrics \BBHHZxCAEMusicLyrics
            \context Voice = AHFVoiceRH \BBHHZxCAEMusicRH
        >>
        \new Lyrics  = AHFLyricsA
        \new Lyrics = AHFLyricsAAlt
        \new Lyrics  = AHFLyricsB
        \new Lyrics = AHFLyricsBAlt
        \new Lyrics  = AHFLyricsC
        \new Lyrics = AHFLyricsCAlt
        \new Lyrics  = AHFLyricsD
        \new Lyrics = AHFLyricsDAlt
        \context Staff = AHFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHFVoiceLH \BBHHZxCAEMusicLH
        >>
        \context Lyrics = AHFLyricsA \lyricsto AHFVoiceLyrics \AHFVerseA
        \context Lyrics = AHFLyricsAAlt \lyricsto AHFVoiceLyrics \AHFVerseAAlt
        \context Lyrics = AHFLyricsB \lyricsto AHFVoiceLyrics \AHFVerseB
        \context Lyrics = AHFLyricsBAlt \lyricsto AHFVoiceLyrics \AHFVerseBAlt
        \context Lyrics = AHFLyricsC \lyricsto AHFVoiceLyrics \AHFVerseC
        \context Lyrics = AHFLyricsCAlt \lyricsto AHFVoiceLyrics \AHFVerseCAlt
        \context Lyrics = AHFLyricsD \lyricsto AHFVoiceLyrics \AHFVerseD
        \context Lyrics = AHFLyricsDAlt \lyricsto AHFVoiceLyrics \AHFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {187}
        \fontsize #6 \center-align \line {O hoe soet is Jesus' woorde}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {191}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHGStaffGroup <<
        \context Staff = AHGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHGVoiceLyrics \BBHHAxAIAMusicLyrics
            \context Voice = AHGVoiceRH \BBHHAxAIAMusicRH
        >>
        \new Lyrics  = AHGLyricsA
        \new Lyrics = AHGLyricsAAlt
        \new Lyrics  = AHGLyricsB
        \new Lyrics = AHGLyricsBAlt
        \new Lyrics  = AHGLyricsC
        \new Lyrics = AHGLyricsCAlt
        \context Staff = AHGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHGVoiceLH \BBHHAxAIAMusicLH
        >>
        \context Lyrics = AHGLyricsA \lyricsto AHGVoiceLyrics \AHGVerseA
        \context Lyrics = AHGLyricsAAlt \lyricsto AHGVoiceLyrics \AHGVerseAAlt
        \context Lyrics = AHGLyricsB \lyricsto AHGVoiceLyrics \AHGVerseB
        \context Lyrics = AHGLyricsBAlt \lyricsto AHGVoiceLyrics \AHGVerseBAlt
        \context Lyrics = AHGLyricsC \lyricsto AHGVoiceLyrics \AHGVerseC
        \context Lyrics = AHGLyricsCAlt \lyricsto AHGVoiceLyrics \AHGVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {188}
        \fontsize #6 \center-align \line {O hoor die stem van Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {147}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHHStaffGroup <<
        \context Staff = AHHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHHVoiceLyrics \BBHHBxADGMusicLyrics
            \context Voice = AHHVoiceRH \BBHHBxADGMusicRH
        >>
        \new Lyrics  = AHHLyricsA
        \new Lyrics = AHHLyricsAAlt
        \new Lyrics  = AHHLyricsB
        \new Lyrics = AHHLyricsBAlt
        \new Lyrics  = AHHLyricsC
        \new Lyrics = AHHLyricsCAlt
        \context Staff = AHHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHHVoiceLH \BBHHBxADGMusicLH
        >>
        \context Lyrics = AHHLyricsA \lyricsto AHHVoiceLyrics \AHHVerseA
        \context Lyrics = AHHLyricsAAlt \lyricsto AHHVoiceLyrics \AHHVerseAAlt
        \context Lyrics = AHHLyricsB \lyricsto AHHVoiceLyrics \AHHVerseB
        \context Lyrics = AHHLyricsBAlt \lyricsto AHHVoiceLyrics \AHHVerseBAlt
        \context Lyrics = AHHLyricsC \lyricsto AHHVoiceLyrics \AHHVerseC
        \context Lyrics = AHHLyricsCAlt \lyricsto AHHVoiceLyrics \AHHVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {189}
        \fontsize #6 \center-align \line {O Lam van God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {4}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AHIStaffGroup <<
        \context Staff = AHIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AHIVoiceLyrics \BBHHCxDMusicLyrics
            \context Voice = AHIVoiceRH \BBHHCxDMusicRH
        >>
        \new Lyrics  = AHILyricsA
        \new Lyrics = AHILyricsAAlt
        \new Lyrics  = AHILyricsB
        \new Lyrics = AHILyricsBAlt
        \new Lyrics  = AHILyricsC
        \new Lyrics = AHILyricsCAlt
        \new Lyrics  = AHILyricsD
        \new Lyrics = AHILyricsDAlt
        \context Staff = AHIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AHIVoiceLH \BBHHCxDMusicLH
        >>
        \context Lyrics = AHILyricsA \lyricsto AHIVoiceLyrics \AHIVerseA
        \context Lyrics = AHILyricsAAlt \lyricsto AHIVoiceLyrics \AHIVerseAAlt
        \context Lyrics = AHILyricsB \lyricsto AHIVoiceLyrics \AHIVerseB
        \context Lyrics = AHILyricsBAlt \lyricsto AHIVoiceLyrics \AHIVerseBAlt
        \context Lyrics = AHILyricsC \lyricsto AHIVoiceLyrics \AHIVerseC
        \context Lyrics = AHILyricsCAlt \lyricsto AHIVoiceLyrics \AHIVerseCAlt
        \context Lyrics = AHILyricsD \lyricsto AHIVoiceLyrics \AHIVerseD
        \context Lyrics = AHILyricsDAlt \lyricsto AHIVoiceLyrics \AHIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {190}
        \fontsize #6 \center-align \line {O leer my hoe te min}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {226}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIZStaffGroup <<
        \context Staff = AIZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIZVoiceLyrics \BBHHDxBBFMusicLyrics
            \context Voice = AIZVoiceRH \BBHHDxBBFMusicRH
        >>
        \new Lyrics  = AIZLyricsA
        \new Lyrics = AIZLyricsAAlt
        \new Lyrics  = AIZLyricsB
        \new Lyrics = AIZLyricsBAlt
        \new Lyrics  = AIZLyricsC
        \new Lyrics = AIZLyricsCAlt
        \new Lyrics  = AIZLyricsD
        \new Lyrics = AIZLyricsDAlt
        \new Lyrics  = AIZLyricsE
        \new Lyrics = AIZLyricsEAlt
        \new Lyrics  = AIZLyricsF
        \new Lyrics = AIZLyricsFAlt
        \context Staff = AIZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIZVoiceLH \BBHHDxBBFMusicLH
        >>
        \context Lyrics = AIZLyricsA \lyricsto AIZVoiceLyrics \AIZVerseA
        \context Lyrics = AIZLyricsAAlt \lyricsto AIZVoiceLyrics \AIZVerseAAlt
        \context Lyrics = AIZLyricsB \lyricsto AIZVoiceLyrics \AIZVerseB
        \context Lyrics = AIZLyricsBAlt \lyricsto AIZVoiceLyrics \AIZVerseBAlt
        \context Lyrics = AIZLyricsC \lyricsto AIZVoiceLyrics \AIZVerseC
        \context Lyrics = AIZLyricsCAlt \lyricsto AIZVoiceLyrics \AIZVerseCAlt
        \context Lyrics = AIZLyricsD \lyricsto AIZVoiceLyrics \AIZVerseD
        \context Lyrics = AIZLyricsDAlt \lyricsto AIZVoiceLyrics \AIZVerseDAlt
        \context Lyrics = AIZLyricsE \lyricsto AIZVoiceLyrics \AIZVerseE
        \context Lyrics = AIZLyricsEAlt \lyricsto AIZVoiceLyrics \AIZVerseEAlt
        \context Lyrics = AIZLyricsF \lyricsto AIZVoiceLyrics \AIZVerseF
        \context Lyrics = AIZLyricsFAlt \lyricsto AIZVoiceLyrics \AIZVerseFAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {191}
        \fontsize #6 \center-align \line {O om te wandel}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {266}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIAStaffGroup <<
        \context Staff = AIAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIAVoiceLyrics \BBHHExBFFMusicLyrics
            \context Voice = AIAVoiceRH \BBHHExBFFMusicRH
        >>
        \new Lyrics  = AIALyricsA
        \new Lyrics = AIALyricsAAlt
        \new Lyrics  = AIALyricsB
        \new Lyrics = AIALyricsBAlt
        \new Lyrics  = AIALyricsC
        \new Lyrics = AIALyricsCAlt
        \new Lyrics  = AIALyricsD
        \new Lyrics = AIALyricsDAlt
        \context Staff = AIAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIAVoiceLH \BBHHExBFFMusicLH
        >>
        \context Lyrics = AIALyricsA \lyricsto AIAVoiceLyrics \AIAVerseA
        \context Lyrics = AIALyricsAAlt \lyricsto AIAVoiceLyrics \AIAVerseAAlt
        \context Lyrics = AIALyricsB \lyricsto AIAVoiceLyrics \AIAVerseB
        \context Lyrics = AIALyricsBAlt \lyricsto AIAVoiceLyrics \AIAVerseBAlt
        \context Lyrics = AIALyricsC \lyricsto AIAVoiceLyrics \AIAVerseC
        \context Lyrics = AIALyricsCAlt \lyricsto AIAVoiceLyrics \AIAVerseCAlt
        \context Lyrics = AIALyricsD \lyricsto AIAVoiceLyrics \AIAVerseD
        \context Lyrics = AIALyricsDAlt \lyricsto AIAVoiceLyrics \AIAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {192}
        \fontsize #6 \center-align \line {O siel beswaard}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {358}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIBStaffGroup <<
        \context Staff = AIBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIBVoiceLyrics \BBHHFxCEHMusicLyrics
            \context Voice = AIBVoiceRH \BBHHFxCEHMusicRH
        >>
        \new Lyrics  = AIBLyricsA
        \new Lyrics = AIBLyricsAAlt
        \new Lyrics  = AIBLyricsB
        \new Lyrics = AIBLyricsBAlt
        \new Lyrics  = AIBLyricsC
        \new Lyrics = AIBLyricsCAlt
        \new Lyrics  = AIBLyricsD
        \new Lyrics = AIBLyricsDAlt
        \context Staff = AIBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIBVoiceLH \BBHHFxCEHMusicLH
        >>
        \context Lyrics = AIBLyricsA \lyricsto AIBVoiceLyrics \AIBVerseA
        \context Lyrics = AIBLyricsAAlt \lyricsto AIBVoiceLyrics \AIBVerseAAlt
        \context Lyrics = AIBLyricsB \lyricsto AIBVoiceLyrics \AIBVerseB
        \context Lyrics = AIBLyricsBAlt \lyricsto AIBVoiceLyrics \AIBVerseBAlt
        \context Lyrics = AIBLyricsC \lyricsto AIBVoiceLyrics \AIBVerseC
        \context Lyrics = AIBLyricsCAlt \lyricsto AIBVoiceLyrics \AIBVerseCAlt
        \context Lyrics = AIBLyricsD \lyricsto AIBVoiceLyrics \AIBVerseD
        \context Lyrics = AIBLyricsDAlt \lyricsto AIBVoiceLyrics \AIBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {193}
        \fontsize #6 \center-align \line {O vir die rus en die vrede}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {278}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AICStaffGroup <<
        \context Staff = AICStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AICVoiceLyrics \BBHHGxBGHMusicLyrics
            \context Voice = AICVoiceRH \BBHHGxBGHMusicRH
        >>
        \new Lyrics  = AICLyricsA
        \new Lyrics = AICLyricsAAlt
        \new Lyrics  = AICLyricsB
        \new Lyrics = AICLyricsBAlt
        \new Lyrics  = AICLyricsC
        \new Lyrics = AICLyricsCAlt
        \new Lyrics  = AICLyricsD
        \new Lyrics = AICLyricsDAlt
        \new Lyrics  = AICLyricsE
        \new Lyrics = AICLyricsEAlt
        \new Lyrics  = AICLyricsF
        \new Lyrics = AICLyricsFAlt
        \context Staff = AICStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AICVoiceLH \BBHHGxBGHMusicLH
        >>
        \context Lyrics = AICLyricsA \lyricsto AICVoiceLyrics \AICVerseA
        \context Lyrics = AICLyricsAAlt \lyricsto AICVoiceLyrics \AICVerseAAlt
        \context Lyrics = AICLyricsB \lyricsto AICVoiceLyrics \AICVerseB
        \context Lyrics = AICLyricsBAlt \lyricsto AICVoiceLyrics \AICVerseBAlt
        \context Lyrics = AICLyricsC \lyricsto AICVoiceLyrics \AICVerseC
        \context Lyrics = AICLyricsCAlt \lyricsto AICVoiceLyrics \AICVerseCAlt
        \context Lyrics = AICLyricsD \lyricsto AICVoiceLyrics \AICVerseD
        \context Lyrics = AICLyricsDAlt \lyricsto AICVoiceLyrics \AICVerseDAlt
        \context Lyrics = AICLyricsE \lyricsto AICVoiceLyrics \AICVerseE
        \context Lyrics = AICLyricsEAlt \lyricsto AICVoiceLyrics \AICVerseEAlt
        \context Lyrics = AICLyricsF \lyricsto AICVoiceLyrics \AICVerseF
        \context Lyrics = AICLyricsFAlt \lyricsto AICVoiceLyrics \AICVerseFAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {194}
        \fontsize #6 \center-align \line {O wat sal u doen}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {166}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIDStaffGroup <<
        \context Staff = AIDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIDVoiceLyrics \BBHHHxAFFLessSylMusicLyrics
            \context Voice = AIDVoiceRH \BBHHHxAFFLessSylMusicRH
        >>
        \new Lyrics  = AIDLyricsA
        \new Lyrics = AIDLyricsAAlt
        \new Lyrics  = AIDLyricsB
        \new Lyrics = AIDLyricsBAlt
        \new Lyrics  = AIDLyricsC
        \new Lyrics = AIDLyricsCAlt
        \context Staff = AIDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIDVoiceLH \BBHHHxAFFLessSylMusicLH
        >>
        \new Lyrics = AIDLyricsBelow
        \context Lyrics = AIDLyricsA \lyricsto AIDVoiceLyrics \AIDVerseA
        \context Lyrics = AIDLyricsAAlt \lyricsto AIDVoiceLyrics \AIDVerseAAlt
        \context Lyrics = AIDLyricsB \lyricsto AIDVoiceLyrics \AIDVerseB
        \context Lyrics = AIDLyricsBAlt \lyricsto AIDVoiceLyrics \AIDVerseBAlt
        \context Lyrics = AIDLyricsC \lyricsto AIDVoiceLyrics \AIDVerseC
        \context Lyrics = AIDLyricsCAlt \lyricsto AIDVoiceLyrics \AIDVerseCAlt
        \context Lyrics = AIDLyricsBelow \lyricsto AIDVoiceLyrics \AIDBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {195}
        \fontsize #6 \center-align \line {Om Jesus te dien hier}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {108}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIEStaffGroup <<
        \context Staff = AIEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIEVoiceLyrics \BBHHIxAZHMusicLyrics
            \context Voice = AIEVoiceRH \BBHHIxAZHMusicRH
        >>
        \new Lyrics  = AIELyricsA
        \new Lyrics = AIELyricsAAlt
        \new Lyrics  = AIELyricsB
        \new Lyrics = AIELyricsBAlt
        \new Lyrics  = AIELyricsC
        \new Lyrics = AIELyricsCAlt
        \new Lyrics  = AIELyricsD
        \new Lyrics = AIELyricsDAlt
        \context Staff = AIEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIEVoiceLH \BBHHIxAZHMusicLH
        >>
        \context Lyrics = AIELyricsA \lyricsto AIEVoiceLyrics \AIEVerseA
        \context Lyrics = AIELyricsAAlt \lyricsto AIEVoiceLyrics \AIEVerseAAlt
        \context Lyrics = AIELyricsB \lyricsto AIEVoiceLyrics \AIEVerseB
        \context Lyrics = AIELyricsBAlt \lyricsto AIEVoiceLyrics \AIEVerseBAlt
        \context Lyrics = AIELyricsC \lyricsto AIEVoiceLyrics \AIEVerseC
        \context Lyrics = AIELyricsCAlt \lyricsto AIEVoiceLyrics \AIEVerseCAlt
        \context Lyrics = AIELyricsD \lyricsto AIEVoiceLyrics \AIEVerseD
        \context Lyrics = AIELyricsDAlt \lyricsto AIEVoiceLyrics \AIEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {196}
        \fontsize #6 \center-align \line {Onfeilbaar' Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {221}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIFStaffGroup <<
        \context Staff = AIFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIFVoiceLyrics \BBHIZxBBAMusicLyrics
            \context Voice = AIFVoiceRH \BBHIZxBBAMusicRH
        >>
        \new Lyrics  = AIFLyricsA
        \new Lyrics = AIFLyricsAAlt
        \new Lyrics  = AIFLyricsB
        \new Lyrics = AIFLyricsBAlt
        \new Lyrics  = AIFLyricsC
        \new Lyrics = AIFLyricsCAlt
        \new Lyrics  = AIFLyricsD
        \new Lyrics = AIFLyricsDAlt
        \new Lyrics  = AIFLyricsE
        \new Lyrics = AIFLyricsEAlt
        \context Staff = AIFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIFVoiceLH \BBHIZxBBAMusicLH
        >>
        \context Lyrics = AIFLyricsA \lyricsto AIFVoiceLyrics \AIFVerseA
        \context Lyrics = AIFLyricsAAlt \lyricsto AIFVoiceLyrics \AIFVerseAAlt
        \context Lyrics = AIFLyricsB \lyricsto AIFVoiceLyrics \AIFVerseB
        \context Lyrics = AIFLyricsBAlt \lyricsto AIFVoiceLyrics \AIFVerseBAlt
        \context Lyrics = AIFLyricsC \lyricsto AIFVoiceLyrics \AIFVerseC
        \context Lyrics = AIFLyricsCAlt \lyricsto AIFVoiceLyrics \AIFVerseCAlt
        \context Lyrics = AIFLyricsD \lyricsto AIFVoiceLyrics \AIFVerseD
        \context Lyrics = AIFLyricsDAlt \lyricsto AIFVoiceLyrics \AIFVerseDAlt
        \context Lyrics = AIFLyricsE \lyricsto AIFVoiceLyrics \AIFVerseE
        \context Lyrics = AIFLyricsEAlt \lyricsto AIFVoiceLyrics \AIFVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {197}
        \fontsize #6 \center-align \line {Ons dank U, Vader}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {240}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIGStaffGroup <<
        \context Staff = AIGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIGVoiceLyrics \BBHIAxBDZMusicLyrics
            \context Voice = AIGVoiceRH \BBHIAxBDZMusicRH
        >>
        \new Lyrics  = AIGLyricsA
        \new Lyrics = AIGLyricsAAlt
        \new Lyrics  = AIGLyricsB
        \new Lyrics = AIGLyricsBAlt
        \new Lyrics  = AIGLyricsC
        \new Lyrics = AIGLyricsCAlt
        \new Lyrics  = AIGLyricsD
        \new Lyrics = AIGLyricsDAlt
        \context Staff = AIGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIGVoiceLH \BBHIAxBDZMusicLH
        >>
        \context Lyrics = AIGLyricsA \lyricsto AIGVoiceLyrics \AIGVerseA
        \context Lyrics = AIGLyricsAAlt \lyricsto AIGVoiceLyrics \AIGVerseAAlt
        \context Lyrics = AIGLyricsB \lyricsto AIGVoiceLyrics \AIGVerseB
        \context Lyrics = AIGLyricsBAlt \lyricsto AIGVoiceLyrics \AIGVerseBAlt
        \context Lyrics = AIGLyricsC \lyricsto AIGVoiceLyrics \AIGVerseC
        \context Lyrics = AIGLyricsCAlt \lyricsto AIGVoiceLyrics \AIGVerseCAlt
        \context Lyrics = AIGLyricsD \lyricsto AIGVoiceLyrics \AIGVerseD
        \context Lyrics = AIGLyricsDAlt \lyricsto AIGVoiceLyrics \AIGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {198}
        \fontsize #6 \center-align \line {Ons leef net eenmaal}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {99}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIHStaffGroup <<
        \context Staff = AIHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIHVoiceLyrics \BBHIBxIIMusicLyrics
            \context Voice = AIHVoiceRH \BBHIBxIIMusicRH
        >>
        \new Lyrics  = AIHLyricsA
        \new Lyrics = AIHLyricsAAlt
        \new Lyrics  = AIHLyricsB
        \new Lyrics = AIHLyricsBAlt
        \new Lyrics  = AIHLyricsC
        \new Lyrics = AIHLyricsCAlt
        \new Lyrics  = AIHLyricsD
        \new Lyrics = AIHLyricsDAlt
        \context Staff = AIHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIHVoiceLH \BBHIBxIIMusicLH
        >>
        \context Lyrics = AIHLyricsA \lyricsto AIHVoiceLyrics \AIHVerseA
        \context Lyrics = AIHLyricsAAlt \lyricsto AIHVoiceLyrics \AIHVerseAAlt
        \context Lyrics = AIHLyricsB \lyricsto AIHVoiceLyrics \AIHVerseB
        \context Lyrics = AIHLyricsBAlt \lyricsto AIHVoiceLyrics \AIHVerseBAlt
        \context Lyrics = AIHLyricsC \lyricsto AIHVoiceLyrics \AIHVerseC
        \context Lyrics = AIHLyricsCAlt \lyricsto AIHVoiceLyrics \AIHVerseCAlt
        \context Lyrics = AIHLyricsD \lyricsto AIHVoiceLyrics \AIHVerseD
        \context Lyrics = AIHLyricsDAlt \lyricsto AIHVoiceLyrics \AIHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {199}
        \fontsize #6 \center-align \line {Ons min die enig' Weg}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {32}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AIIStaffGroup <<
        \context Staff = AIIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AIIVoiceLyrics \BBHICxCBMusicLyrics
            \context Voice = AIIVoiceRH \BBHICxCBMusicRH
        >>
        \new Lyrics  = AIILyricsA
        \new Lyrics = AIILyricsAAlt
        \new Lyrics  = AIILyricsB
        \new Lyrics = AIILyricsBAlt
        \new Lyrics  = AIILyricsC
        \new Lyrics = AIILyricsCAlt
        \new Lyrics  = AIILyricsD
        \new Lyrics = AIILyricsDAlt
        \context Staff = AIIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = AIIVoiceLH \BBHICxCBMusicLH
        >>
        \context Lyrics = AIILyricsA \lyricsto AIIVoiceLyrics \AIIVerseA
        \context Lyrics = AIILyricsAAlt \lyricsto AIIVoiceLyrics \AIIVerseAAlt
        \context Lyrics = AIILyricsB \lyricsto AIIVoiceLyrics \AIIVerseB
        \context Lyrics = AIILyricsBAlt \lyricsto AIIVoiceLyrics \AIIVerseBAlt
        \context Lyrics = AIILyricsC \lyricsto AIIVoiceLyrics \AIIVerseC
        \context Lyrics = AIILyricsCAlt \lyricsto AIIVoiceLyrics \AIIVerseCAlt
        \context Lyrics = AIILyricsD \lyricsto AIIVoiceLyrics \AIIVerseD
        \context Lyrics = AIILyricsDAlt \lyricsto AIIVoiceLyrics \AIIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {200}
        \fontsize #6 \center-align \line {Ons sien graag Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {392}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZZStaffGroup <<
        \context Staff = BZZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZZVoiceLyrics \BBHIDxCIBMusicLyrics
            \context Voice = BZZVoiceRH \BBHIDxCIBMusicRH
        >>
        \new Lyrics  = BZZLyricsA
        \new Lyrics = BZZLyricsAAlt
        \new Lyrics  = BZZLyricsB
        \new Lyrics = BZZLyricsBAlt
        \new Lyrics  = BZZLyricsC
        \new Lyrics = BZZLyricsCAlt
        \new Lyrics  = BZZLyricsD
        \new Lyrics = BZZLyricsDAlt
        \context Staff = BZZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZZVoiceLH \BBHIDxCIBMusicLH
        >>
        \context Lyrics = BZZLyricsA \lyricsto BZZVoiceLyrics \BZZVerseA
        \context Lyrics = BZZLyricsAAlt \lyricsto BZZVoiceLyrics \BZZVerseAAlt
        \context Lyrics = BZZLyricsB \lyricsto BZZVoiceLyrics \BZZVerseB
        \context Lyrics = BZZLyricsBAlt \lyricsto BZZVoiceLyrics \BZZVerseBAlt
        \context Lyrics = BZZLyricsC \lyricsto BZZVoiceLyrics \BZZVerseC
        \context Lyrics = BZZLyricsCAlt \lyricsto BZZVoiceLyrics \BZZVerseCAlt
        \context Lyrics = BZZLyricsD \lyricsto BZZVoiceLyrics \BZZVerseD
        \context Lyrics = BZZLyricsDAlt \lyricsto BZZVoiceLyrics \BZZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {201}
        \fontsize #6 \center-align \line {Ons verwelk hier}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {97}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZAStaffGroup <<
        \context Staff = BZAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZAVoiceLyrics \BBHIExIGMusicLyrics
            \context Voice = BZAVoiceRH \BBHIExIGMusicRH
        >>
        \new Lyrics  = BZALyricsA
        \new Lyrics = BZALyricsAAlt
        \new Lyrics  = BZALyricsB
        \new Lyrics = BZALyricsBAlt
        \new Lyrics  = BZALyricsC
        \new Lyrics = BZALyricsCAlt
        \new Lyrics  = BZALyricsD
        \new Lyrics = BZALyricsDAlt
        \context Staff = BZAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZAVoiceLH \BBHIExIGMusicLH
        >>
        \context Lyrics = BZALyricsA \lyricsto BZAVoiceLyrics \BZAVerseA
        \context Lyrics = BZALyricsAAlt \lyricsto BZAVoiceLyrics \BZAVerseAAlt
        \context Lyrics = BZALyricsB \lyricsto BZAVoiceLyrics \BZAVerseB
        \context Lyrics = BZALyricsBAlt \lyricsto BZAVoiceLyrics \BZAVerseBAlt
        \context Lyrics = BZALyricsC \lyricsto BZAVoiceLyrics \BZAVerseC
        \context Lyrics = BZALyricsCAlt \lyricsto BZAVoiceLyrics \BZAVerseCAlt
        \context Lyrics = BZALyricsD \lyricsto BZAVoiceLyrics \BZAVerseD
        \context Lyrics = BZALyricsDAlt \lyricsto BZAVoiceLyrics \BZAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {202}
        \fontsize #6 \center-align \line {Oor en oor kom daar}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {381}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZBStaffGroup <<
        \context Staff = BZBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZBVoiceLyrics \BBHIFxCHAMusicLyrics
            \context Voice = BZBVoiceRH \BBHIFxCHAMusicRH
        >>
        \new Lyrics  = BZBLyricsA
        \new Lyrics = BZBLyricsAAlt
        \new Lyrics  = BZBLyricsB
        \new Lyrics = BZBLyricsBAlt
        \new Lyrics  = BZBLyricsC
        \new Lyrics = BZBLyricsCAlt
        \new Lyrics  = BZBLyricsD
        \new Lyrics = BZBLyricsDAlt
        \context Staff = BZBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZBVoiceLH \BBHIFxCHAMusicLH
        >>
        \context Lyrics = BZBLyricsA \lyricsto BZBVoiceLyrics \BZBVerseA
        \context Lyrics = BZBLyricsAAlt \lyricsto BZBVoiceLyrics \BZBVerseAAlt
        \context Lyrics = BZBLyricsB \lyricsto BZBVoiceLyrics \BZBVerseB
        \context Lyrics = BZBLyricsBAlt \lyricsto BZBVoiceLyrics \BZBVerseBAlt
        \context Lyrics = BZBLyricsC \lyricsto BZBVoiceLyrics \BZBVerseC
        \context Lyrics = BZBLyricsCAlt \lyricsto BZBVoiceLyrics \BZBVerseCAlt
        \context Lyrics = BZBLyricsD \lyricsto BZBVoiceLyrics \BZBVerseD
        \context Lyrics = BZBLyricsDAlt \lyricsto BZBVoiceLyrics \BZBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {203}
        \fontsize #6 \center-align \line {Op weg na Golgota}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {389}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZCStaffGroup <<
        \context Staff = BZCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZCVoiceLyrics \BBHIGxCHIMusicLyrics
            \context Voice = BZCVoiceRH \BBHIGxCHIMusicRH
        >>
        \new Lyrics  = BZCLyricsA
        \new Lyrics = BZCLyricsAAlt
        \new Lyrics  = BZCLyricsB
        \new Lyrics = BZCLyricsBAlt
        \new Lyrics  = BZCLyricsC
        \new Lyrics = BZCLyricsCAlt
        \context Staff = BZCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZCVoiceLH \BBHIGxCHIMusicLH
        >>
        \context Lyrics = BZCLyricsA \lyricsto BZCVoiceLyrics \BZCVerseA
        \context Lyrics = BZCLyricsAAlt \lyricsto BZCVoiceLyrics \BZCVerseAAlt
        \context Lyrics = BZCLyricsB \lyricsto BZCVoiceLyrics \BZCVerseB
        \context Lyrics = BZCLyricsBAlt \lyricsto BZCVoiceLyrics \BZCVerseBAlt
        \context Lyrics = BZCLyricsC \lyricsto BZCVoiceLyrics \BZCVerseC
        \context Lyrics = BZCLyricsCAlt \lyricsto BZCVoiceLyrics \BZCVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {204}
        \fontsize #6 \center-align \line {Sag en soet kom daar}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {162}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZDStaffGroup <<
        \context Staff = BZDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZDVoiceLyrics \BBHIHxAFBMusicLyrics
            \context Voice = BZDVoiceRH \BBHIHxAFBMusicRH
        >>
        \new Lyrics  = BZDLyricsA
        \new Lyrics = BZDLyricsAAlt
        \new Lyrics  = BZDLyricsB
        \new Lyrics = BZDLyricsBAlt
        \new Lyrics  = BZDLyricsC
        \new Lyrics = BZDLyricsCAlt
        \new Lyrics  = BZDLyricsD
        \new Lyrics = BZDLyricsDAlt
        \context Staff = BZDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZDVoiceLH \BBHIHxAFBMusicLH
        >>
        \context Lyrics = BZDLyricsA \lyricsto BZDVoiceLyrics \BZDVerseA
        \context Lyrics = BZDLyricsAAlt \lyricsto BZDVoiceLyrics \BZDVerseAAlt
        \context Lyrics = BZDLyricsB \lyricsto BZDVoiceLyrics \BZDVerseB
        \context Lyrics = BZDLyricsBAlt \lyricsto BZDVoiceLyrics \BZDVerseBAlt
        \context Lyrics = BZDLyricsC \lyricsto BZDVoiceLyrics \BZDVerseC
        \context Lyrics = BZDLyricsCAlt \lyricsto BZDVoiceLyrics \BZDVerseCAlt
        \context Lyrics = BZDLyricsD \lyricsto BZDVoiceLyrics \BZDVerseD
        \context Lyrics = BZDLyricsDAlt \lyricsto BZDVoiceLyrics \BZDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {205}
        \fontsize #6 \center-align \line {Saggies en tederlik}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {113}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZEStaffGroup <<
        \context Staff = BZEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZEVoiceLyrics \BBHIIxAACMusicLyrics
            \context Voice = BZEVoiceRH \BBHIIxAACMusicRH
        >>
        \new Lyrics  = BZELyricsA
        \new Lyrics = BZELyricsAAlt
        \new Lyrics  = BZELyricsB
        \new Lyrics = BZELyricsBAlt
        \new Lyrics  = BZELyricsC
        \new Lyrics = BZELyricsCAlt
        \new Lyrics  = BZELyricsD
        \new Lyrics = BZELyricsDAlt
        \context Staff = BZEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZEVoiceLH \BBHIIxAACMusicLH
        >>
        \context Lyrics = BZELyricsA \lyricsto BZEVoiceLyrics \BZEVerseA
        \context Lyrics = BZELyricsAAlt \lyricsto BZEVoiceLyrics \BZEVerseAAlt
        \context Lyrics = BZELyricsB \lyricsto BZEVoiceLyrics \BZEVerseB
        \context Lyrics = BZELyricsBAlt \lyricsto BZEVoiceLyrics \BZEVerseBAlt
        \context Lyrics = BZELyricsC \lyricsto BZEVoiceLyrics \BZEVerseC
        \context Lyrics = BZELyricsCAlt \lyricsto BZEVoiceLyrics \BZEVerseCAlt
        \context Lyrics = BZELyricsD \lyricsto BZEVoiceLyrics \BZEVerseD
        \context Lyrics = BZELyricsDAlt \lyricsto BZEVoiceLyrics \BZEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {206}
        \fontsize #6 \center-align \line {Siel vermoeid, verlaat u sonde}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {141}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZFStaffGroup <<
        \context Staff = BZFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZFVoiceLyrics \BBIZZxADAMusicLyrics
            \context Voice = BZFVoiceRH \BBIZZxADAMusicRH
        >>
        \new Lyrics  = BZFLyricsA
        \new Lyrics = BZFLyricsAAlt
        \new Lyrics  = BZFLyricsB
        \new Lyrics = BZFLyricsBAlt
        \new Lyrics  = BZFLyricsC
        \new Lyrics = BZFLyricsCAlt
        \new Lyrics  = BZFLyricsD
        \new Lyrics = BZFLyricsDAlt
        \context Staff = BZFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZFVoiceLH \BBIZZxADAMusicLH
        >>
        \context Lyrics = BZFLyricsA \lyricsto BZFVoiceLyrics \BZFVerseA
        \context Lyrics = BZFLyricsAAlt \lyricsto BZFVoiceLyrics \BZFVerseAAlt
        \context Lyrics = BZFLyricsB \lyricsto BZFVoiceLyrics \BZFVerseB
        \context Lyrics = BZFLyricsBAlt \lyricsto BZFVoiceLyrics \BZFVerseBAlt
        \context Lyrics = BZFLyricsC \lyricsto BZFVoiceLyrics \BZFVerseC
        \context Lyrics = BZFLyricsCAlt \lyricsto BZFVoiceLyrics \BZFVerseCAlt
        \context Lyrics = BZFLyricsD \lyricsto BZFVoiceLyrics \BZFVerseD
        \context Lyrics = BZFLyricsDAlt \lyricsto BZFVoiceLyrics \BZFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {207}
        \fontsize #6 \center-align \line {Siel wat voortdryf}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {67}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZGStaffGroup <<
        \context Staff = BZGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZGVoiceLyrics \BBIZAxFGMusicLyrics
            \context Voice = BZGVoiceRH \BBIZAxFGMusicRH
        >>
        \new Lyrics  = BZGLyricsA
        \new Lyrics = BZGLyricsAAlt
        \new Lyrics  = BZGLyricsB
        \new Lyrics = BZGLyricsBAlt
        \new Lyrics  = BZGLyricsC
        \new Lyrics = BZGLyricsCAlt
        \new Lyrics  = BZGLyricsD
        \new Lyrics = BZGLyricsDAlt
        \context Staff = BZGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZGVoiceLH \BBIZAxFGMusicLH
        >>
        \context Lyrics = BZGLyricsA \lyricsto BZGVoiceLyrics \BZGVerseA
        \context Lyrics = BZGLyricsAAlt \lyricsto BZGVoiceLyrics \BZGVerseAAlt
        \context Lyrics = BZGLyricsB \lyricsto BZGVoiceLyrics \BZGVerseB
        \context Lyrics = BZGLyricsBAlt \lyricsto BZGVoiceLyrics \BZGVerseBAlt
        \context Lyrics = BZGLyricsC \lyricsto BZGVoiceLyrics \BZGVerseC
        \context Lyrics = BZGLyricsCAlt \lyricsto BZGVoiceLyrics \BZGVerseCAlt
        \context Lyrics = BZGLyricsD \lyricsto BZGVoiceLyrics \BZGVerseD
        \context Lyrics = BZGLyricsDAlt \lyricsto BZGVoiceLyrics \BZGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {208}
        \fontsize #6 \center-align \line {Sing vir my die Sionslied're}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {245}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZHStaffGroup <<
        \context Staff = BZHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZHVoiceLyrics \BBIZBxBDEMusicLyrics
            \context Voice = BZHVoiceRH \BBIZBxBDEMusicRH
        >>
        \new Lyrics  = BZHLyricsA
        \new Lyrics = BZHLyricsAAlt
        \new Lyrics  = BZHLyricsB
        \new Lyrics = BZHLyricsBAlt
        \new Lyrics  = BZHLyricsC
        \new Lyrics = BZHLyricsCAlt
        \new Lyrics  = BZHLyricsD
        \new Lyrics = BZHLyricsDAlt
        \context Staff = BZHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZHVoiceLH \BBIZBxBDEMusicLH
        >>
        \context Lyrics = BZHLyricsA \lyricsto BZHVoiceLyrics \BZHVerseA
        \context Lyrics = BZHLyricsAAlt \lyricsto BZHVoiceLyrics \BZHVerseAAlt
        \context Lyrics = BZHLyricsB \lyricsto BZHVoiceLyrics \BZHVerseB
        \context Lyrics = BZHLyricsBAlt \lyricsto BZHVoiceLyrics \BZHVerseBAlt
        \context Lyrics = BZHLyricsC \lyricsto BZHVoiceLyrics \BZHVerseC
        \context Lyrics = BZHLyricsCAlt \lyricsto BZHVoiceLyrics \BZHVerseCAlt
        \context Lyrics = BZHLyricsD \lyricsto BZHVoiceLyrics \BZHVerseD
        \context Lyrics = BZHLyricsDAlt \lyricsto BZHVoiceLyrics \BZHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {209}
        \fontsize #6 \center-align \line {Skenk my die Christussin}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {390}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BZIStaffGroup <<
        \context Staff = BZIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BZIVoiceLyrics \BBIZCxCHIMusicLyrics
            \context Voice = BZIVoiceRH \BBIZCxCHIMusicRH
        >>
        \new Lyrics  = BZILyricsA
        \new Lyrics = BZILyricsAAlt
        \new Lyrics  = BZILyricsB
        \new Lyrics = BZILyricsBAlt
        \new Lyrics  = BZILyricsC
        \new Lyrics = BZILyricsCAlt
        \new Lyrics  = BZILyricsD
        \new Lyrics = BZILyricsDAlt
        \context Staff = BZIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BZIVoiceLH \BBIZCxCHIMusicLH
        >>
        \context Lyrics = BZILyricsA \lyricsto BZIVoiceLyrics \BZIVerseA
        \context Lyrics = BZILyricsAAlt \lyricsto BZIVoiceLyrics \BZIVerseAAlt
        \context Lyrics = BZILyricsB \lyricsto BZIVoiceLyrics \BZIVerseB
        \context Lyrics = BZILyricsBAlt \lyricsto BZIVoiceLyrics \BZIVerseBAlt
        \context Lyrics = BZILyricsC \lyricsto BZIVoiceLyrics \BZIVerseC
        \context Lyrics = BZILyricsCAlt \lyricsto BZIVoiceLyrics \BZIVerseCAlt
        \context Lyrics = BZILyricsD \lyricsto BZIVoiceLyrics \BZIVerseD
        \context Lyrics = BZILyricsDAlt \lyricsto BZIVoiceLyrics \BZIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {210}
        \fontsize #6 \center-align \line {Skenk my 'n hart so teer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {215}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAZStaffGroup <<
        \context Staff = BAZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAZVoiceLyrics \BBIZDxBAEMusicLyrics
            \context Voice = BAZVoiceRH \BBIZDxBAEMusicRH
        >>
        \new Lyrics  = BAZLyricsA
        \new Lyrics = BAZLyricsAAlt
        \new Lyrics  = BAZLyricsB
        \new Lyrics = BAZLyricsBAlt
        \new Lyrics  = BAZLyricsC
        \new Lyrics = BAZLyricsCAlt
        \context Staff = BAZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAZVoiceLH \BBIZDxBAEMusicLH
        >>
        \context Lyrics = BAZLyricsA \lyricsto BAZVoiceLyrics \BAZVerseA
        \context Lyrics = BAZLyricsAAlt \lyricsto BAZVoiceLyrics \BAZVerseAAlt
        \context Lyrics = BAZLyricsB \lyricsto BAZVoiceLyrics \BAZVerseB
        \context Lyrics = BAZLyricsBAlt \lyricsto BAZVoiceLyrics \BAZVerseBAlt
        \context Lyrics = BAZLyricsC \lyricsto BAZVoiceLyrics \BAZVerseC
        \context Lyrics = BAZLyricsCAlt \lyricsto BAZVoiceLyrics \BAZVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {211}
        \fontsize #6 \center-align \line {Skenk ons Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {190}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAAStaffGroup <<
        \context Staff = BAAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAAVoiceLyrics \BBIZExAIZMusicLyrics
            \context Voice = BAAVoiceRH \BBIZExAIZMusicRH
        >>
        \new Lyrics  = BAALyricsA
        \new Lyrics = BAALyricsAAlt
        \new Lyrics  = BAALyricsB
        \new Lyrics = BAALyricsBAlt
        \new Lyrics  = BAALyricsC
        \new Lyrics = BAALyricsCAlt
        \new Lyrics  = BAALyricsD
        \new Lyrics = BAALyricsDAlt
        \context Staff = BAAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAAVoiceLH \BBIZExAIZMusicLH
        >>
        \context Lyrics = BAALyricsA \lyricsto BAAVoiceLyrics \BAAVerseA
        \context Lyrics = BAALyricsAAlt \lyricsto BAAVoiceLyrics \BAAVerseAAlt
        \context Lyrics = BAALyricsB \lyricsto BAAVoiceLyrics \BAAVerseB
        \context Lyrics = BAALyricsBAlt \lyricsto BAAVoiceLyrics \BAAVerseBAlt
        \context Lyrics = BAALyricsC \lyricsto BAAVoiceLyrics \BAAVerseC
        \context Lyrics = BAALyricsCAlt \lyricsto BAAVoiceLyrics \BAAVerseCAlt
        \context Lyrics = BAALyricsD \lyricsto BAAVoiceLyrics \BAAVerseD
        \context Lyrics = BAALyricsDAlt \lyricsto BAAVoiceLyrics \BAAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {212}
        \fontsize #6 \center-align \line {Slegs een tree nou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {164}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BABStaffGroup <<
        \context Staff = BABStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BABVoiceLyrics \BBIZFxAFDMusicLyrics
            \context Voice = BABVoiceRH \BBIZFxAFDMusicRH
        >>
        \new Lyrics  = BABLyricsA
        \new Lyrics = BABLyricsAAlt
        \new Lyrics  = BABLyricsB
        \new Lyrics = BABLyricsBAlt
        \new Lyrics  = BABLyricsC
        \new Lyrics = BABLyricsCAlt
        \new Lyrics  = BABLyricsD
        \new Lyrics = BABLyricsDAlt
        \context Staff = BABStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BABVoiceLH \BBIZFxAFDMusicLH
        >>
        \context Lyrics = BABLyricsA \lyricsto BABVoiceLyrics \BABVerseA
        \context Lyrics = BABLyricsAAlt \lyricsto BABVoiceLyrics \BABVerseAAlt
        \context Lyrics = BABLyricsB \lyricsto BABVoiceLyrics \BABVerseB
        \context Lyrics = BABLyricsBAlt \lyricsto BABVoiceLyrics \BABVerseBAlt
        \context Lyrics = BABLyricsC \lyricsto BABVoiceLyrics \BABVerseC
        \context Lyrics = BABLyricsCAlt \lyricsto BABVoiceLyrics \BABVerseCAlt
        \context Lyrics = BABLyricsD \lyricsto BABVoiceLyrics \BABVerseD
        \context Lyrics = BABLyricsDAlt \lyricsto BABVoiceLyrics \BABVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {213}
        \fontsize #6 \center-align \line {Slegs maar een lewe}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {93}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BACStaffGroup <<
        \context Staff = BACStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BACVoiceLyrics \BBIZGxICMusicLyrics
            \context Voice = BACVoiceRH \BBIZGxICMusicRH
        >>
        \new Lyrics  = BACLyricsA
        \new Lyrics = BACLyricsAAlt
        \new Lyrics  = BACLyricsB
        \new Lyrics = BACLyricsBAlt
        \new Lyrics  = BACLyricsC
        \new Lyrics = BACLyricsCAlt
        \new Lyrics  = BACLyricsD
        \new Lyrics = BACLyricsDAlt
        \context Staff = BACStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BACVoiceLH \BBIZGxICMusicLH
        >>
        \context Lyrics = BACLyricsA \lyricsto BACVoiceLyrics \BACVerseA
        \context Lyrics = BACLyricsAAlt \lyricsto BACVoiceLyrics \BACVerseAAlt
        \context Lyrics = BACLyricsB \lyricsto BACVoiceLyrics \BACVerseB
        \context Lyrics = BACLyricsBAlt \lyricsto BACVoiceLyrics \BACVerseBAlt
        \context Lyrics = BACLyricsC \lyricsto BACVoiceLyrics \BACVerseC
        \context Lyrics = BACLyricsCAlt \lyricsto BACVoiceLyrics \BACVerseCAlt
        \context Lyrics = BACLyricsD \lyricsto BACVoiceLyrics \BACVerseD
        \context Lyrics = BACLyricsDAlt \lyricsto BACVoiceLyrics \BACVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {214}
        \fontsize #6 \center-align \line {So wonderbaar U weë}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {359}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BADStaffGroup <<
        \context Staff = BADStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BADVoiceLyrics \BBIZHxCEIMusicLyrics
            \context Voice = BADVoiceRH \BBIZHxCEIMusicRH
        >>
        \new Lyrics  = BADLyricsA
        \new Lyrics = BADLyricsAAlt
        \new Lyrics  = BADLyricsB
        \new Lyrics = BADLyricsBAlt
        \new Lyrics  = BADLyricsC
        \new Lyrics = BADLyricsCAlt
        \context Staff = BADStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BADVoiceLH \BBIZHxCEIMusicLH
        >>
        \context Lyrics = BADLyricsA \lyricsto BADVoiceLyrics \BADVerseA
        \context Lyrics = BADLyricsAAlt \lyricsto BADVoiceLyrics \BADVerseAAlt
        \context Lyrics = BADLyricsB \lyricsto BADVoiceLyrics \BADVerseB
        \context Lyrics = BADLyricsBAlt \lyricsto BADVoiceLyrics \BADVerseBAlt
        \context Lyrics = BADLyricsC \lyricsto BADVoiceLyrics \BADVerseC
        \context Lyrics = BADLyricsCAlt \lyricsto BADVoiceLyrics \BADVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {215}
        \fontsize #6 \center-align \line {Soet' woord' van Jesus}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {62}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAEStaffGroup <<
        \context Staff = BAEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAEVoiceLyrics \BBIZIxFBMusicLyrics
            \context Voice = BAEVoiceRH \BBIZIxFBMusicRH
        >>
        \new Lyrics  = BAELyricsA
        \new Lyrics = BAELyricsAAlt
        \new Lyrics  = BAELyricsB
        \new Lyrics = BAELyricsBAlt
        \new Lyrics  = BAELyricsC
        \new Lyrics = BAELyricsCAlt
        \context Staff = BAEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAEVoiceLH \BBIZIxFBMusicLH
        >>
        \context Lyrics = BAELyricsA \lyricsto BAEVoiceLyrics \BAEVerseA
        \context Lyrics = BAELyricsAAlt \lyricsto BAEVoiceLyrics \BAEVerseAAlt
        \context Lyrics = BAELyricsB \lyricsto BAEVoiceLyrics \BAEVerseB
        \context Lyrics = BAELyricsBAlt \lyricsto BAEVoiceLyrics \BAEVerseBAlt
        \context Lyrics = BAELyricsC \lyricsto BAEVoiceLyrics \BAEVerseC
        \context Lyrics = BAELyricsCAlt \lyricsto BAEVoiceLyrics \BAEVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {216}
        \fontsize #6 \center-align \line {Somtyds sit u en mymer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {133}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAFStaffGroup <<
        \context Staff = BAFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAFVoiceLyrics \BBIAZxACCMusicLyrics
            \context Voice = BAFVoiceRH \BBIAZxACCMusicRH
        >>
        \new Lyrics  = BAFLyricsA
        \new Lyrics = BAFLyricsAAlt
        \new Lyrics  = BAFLyricsB
        \new Lyrics = BAFLyricsBAlt
        \new Lyrics  = BAFLyricsC
        \new Lyrics = BAFLyricsCAlt
        \new Lyrics  = BAFLyricsD
        \new Lyrics = BAFLyricsDAlt
        \context Staff = BAFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAFVoiceLH \BBIAZxACCMusicLH
        >>
        \context Lyrics = BAFLyricsA \lyricsto BAFVoiceLyrics \BAFVerseA
        \context Lyrics = BAFLyricsAAlt \lyricsto BAFVoiceLyrics \BAFVerseAAlt
        \context Lyrics = BAFLyricsB \lyricsto BAFVoiceLyrics \BAFVerseB
        \context Lyrics = BAFLyricsBAlt \lyricsto BAFVoiceLyrics \BAFVerseBAlt
        \context Lyrics = BAFLyricsC \lyricsto BAFVoiceLyrics \BAFVerseC
        \context Lyrics = BAFLyricsCAlt \lyricsto BAFVoiceLyrics \BAFVerseCAlt
        \context Lyrics = BAFLyricsD \lyricsto BAFVoiceLyrics \BAFVerseD
        \context Lyrics = BAFLyricsDAlt \lyricsto BAFVoiceLyrics \BAFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {217}
        \fontsize #6 \center-align \line {Sonder Jesus of 'n Heiland}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {137}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAGStaffGroup <<
        \context Staff = BAGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAGVoiceLyrics \BBIAAxACGMusicLyrics
            \context Voice = BAGVoiceRH \BBIAAxACGMusicRH
        >>
        \new Lyrics  = BAGLyricsA
        \new Lyrics = BAGLyricsAAlt
        \new Lyrics  = BAGLyricsB
        \new Lyrics = BAGLyricsBAlt
        \new Lyrics  = BAGLyricsC
        \new Lyrics = BAGLyricsCAlt
        \new Lyrics  = BAGLyricsD
        \new Lyrics = BAGLyricsDAlt
        \context Staff = BAGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAGVoiceLH \BBIAAxACGMusicLH
        >>
        \context Lyrics = BAGLyricsA \lyricsto BAGVoiceLyrics \BAGVerseA
        \context Lyrics = BAGLyricsAAlt \lyricsto BAGVoiceLyrics \BAGVerseAAlt
        \context Lyrics = BAGLyricsB \lyricsto BAGVoiceLyrics \BAGVerseB
        \context Lyrics = BAGLyricsBAlt \lyricsto BAGVoiceLyrics \BAGVerseBAlt
        \context Lyrics = BAGLyricsC \lyricsto BAGVoiceLyrics \BAGVerseC
        \context Lyrics = BAGLyricsCAlt \lyricsto BAGVoiceLyrics \BAGVerseCAlt
        \context Lyrics = BAGLyricsD \lyricsto BAGVoiceLyrics \BAGVerseD
        \context Lyrics = BAGLyricsDAlt \lyricsto BAGVoiceLyrics \BAGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {218}
        \fontsize #6 \center-align \line {Sou ek alles hê}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {49}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAHStaffGroup <<
        \context Staff = BAHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAHVoiceLyrics \BBIABxDIMoreSylBMusicLyrics
            \context Voice = BAHVoiceRH \BBIABxDIMoreSylBMusicRH
        >>
        \new Lyrics  = BAHLyricsA
        \new Lyrics = BAHLyricsAAlt
        \new Lyrics  = BAHLyricsB
        \new Lyrics = BAHLyricsBAlt
        \new Lyrics  = BAHLyricsC
        \new Lyrics = BAHLyricsCAlt
        \new Lyrics  = BAHLyricsD
        \new Lyrics = BAHLyricsDAlt
        \context Staff = BAHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAHVoiceLH \BBIABxDIMoreSylBMusicLH
        >>
        \context Lyrics = BAHLyricsA \lyricsto BAHVoiceLyrics \BAHVerseA
        \context Lyrics = BAHLyricsAAlt \lyricsto BAHVoiceLyrics \BAHVerseAAlt
        \context Lyrics = BAHLyricsB \lyricsto BAHVoiceLyrics \BAHVerseB
        \context Lyrics = BAHLyricsBAlt \lyricsto BAHVoiceLyrics \BAHVerseBAlt
        \context Lyrics = BAHLyricsC \lyricsto BAHVoiceLyrics \BAHVerseC
        \context Lyrics = BAHLyricsCAlt \lyricsto BAHVoiceLyrics \BAHVerseCAlt
        \context Lyrics = BAHLyricsD \lyricsto BAHVoiceLyrics \BAHVerseD
        \context Lyrics = BAHLyricsDAlt \lyricsto BAHVoiceLyrics \BAHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {219}
        \fontsize #6 \center-align \line {Sou toetse swaar my hier}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {289}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BAIStaffGroup <<
        \context Staff = BAIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BAIVoiceLyrics \BBIACxBHIMusicLyrics
            \context Voice = BAIVoiceRH \BBIACxBHIMusicRH
        >>
        \new Lyrics  = BAILyricsA
        \new Lyrics = BAILyricsAAlt
        \new Lyrics  = BAILyricsB
        \new Lyrics = BAILyricsBAlt
        \new Lyrics  = BAILyricsC
        \new Lyrics = BAILyricsCAlt
        \context Staff = BAIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BAIVoiceLH \BBIACxBHIMusicLH
        >>
        \new Lyrics = BAILyricsBelow
        \context Lyrics = BAILyricsA \lyricsto BAIVoiceLyrics \BAIVerseA
        \context Lyrics = BAILyricsAAlt \lyricsto BAIVoiceLyrics \BAIVerseAAlt
        \context Lyrics = BAILyricsB \lyricsto BAIVoiceLyrics \BAIVerseB
        \context Lyrics = BAILyricsBAlt \lyricsto BAIVoiceLyrics \BAIVerseBAlt
        \context Lyrics = BAILyricsC \lyricsto BAIVoiceLyrics \BAIVerseC
        \context Lyrics = BAILyricsCAlt \lyricsto BAIVoiceLyrics \BAIVerseCAlt
        \context Lyrics = BAILyricsBelow \lyricsto BAIVoiceLyrics \BAIBelow

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {220}
        \fontsize #6 \center-align \line {Stil heengegaan}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {411}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBZStaffGroup <<
        \context Staff = BBZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBZVoiceLyrics \BBIADxDAAMusicLyrics
            \context Voice = BBZVoiceRH \BBIADxDAAMusicRH
        >>
        \new Lyrics  = BBZLyricsA
        \new Lyrics = BBZLyricsAAlt
        \new Lyrics  = BBZLyricsB
        \new Lyrics = BBZLyricsBAlt
        \new Lyrics  = BBZLyricsC
        \new Lyrics = BBZLyricsCAlt
        \new Lyrics  = BBZLyricsD
        \new Lyrics = BBZLyricsDAlt
        \new Lyrics  = BBZLyricsE
        \new Lyrics = BBZLyricsEAlt
        \context Staff = BBZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBZVoiceLH \BBIADxDAAMusicLH
        >>
        \context Lyrics = BBZLyricsA \lyricsto BBZVoiceLyrics \BBZVerseA
        \context Lyrics = BBZLyricsAAlt \lyricsto BBZVoiceLyrics \BBZVerseAAlt
        \context Lyrics = BBZLyricsB \lyricsto BBZVoiceLyrics \BBZVerseB
        \context Lyrics = BBZLyricsBAlt \lyricsto BBZVoiceLyrics \BBZVerseBAlt
        \context Lyrics = BBZLyricsC \lyricsto BBZVoiceLyrics \BBZVerseC
        \context Lyrics = BBZLyricsCAlt \lyricsto BBZVoiceLyrics \BBZVerseCAlt
        \context Lyrics = BBZLyricsD \lyricsto BBZVoiceLyrics \BBZVerseD
        \context Lyrics = BBZLyricsDAlt \lyricsto BBZVoiceLyrics \BBZVerseDAlt
        \context Lyrics = BBZLyricsE \lyricsto BBZVoiceLyrics \BBZVerseE
        \context Lyrics = BBZLyricsEAlt \lyricsto BBZVoiceLyrics \BBZVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {221}
        \fontsize #6 \center-align \line {Stuur U lig O liewe Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {70}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBAStaffGroup <<
        \context Staff = BBAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBAVoiceLyrics \BBIAExGZMusicLyrics
            \context Voice = BBAVoiceRH \BBIAExGZMusicRH
        >>
        \new Lyrics  = BBALyricsA
        \new Lyrics = BBALyricsAAlt
        \new Lyrics  = BBALyricsB
        \new Lyrics = BBALyricsBAlt
        \new Lyrics  = BBALyricsC
        \new Lyrics = BBALyricsCAlt
        \new Lyrics  = BBALyricsD
        \new Lyrics = BBALyricsDAlt
        \context Staff = BBAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBAVoiceLH \BBIAExGZMusicLH
        >>
        \context Lyrics = BBALyricsA \lyricsto BBAVoiceLyrics \BBAVerseA
        \context Lyrics = BBALyricsAAlt \lyricsto BBAVoiceLyrics \BBAVerseAAlt
        \context Lyrics = BBALyricsB \lyricsto BBAVoiceLyrics \BBAVerseB
        \context Lyrics = BBALyricsBAlt \lyricsto BBAVoiceLyrics \BBAVerseBAlt
        \context Lyrics = BBALyricsC \lyricsto BBAVoiceLyrics \BBAVerseC
        \context Lyrics = BBALyricsCAlt \lyricsto BBAVoiceLyrics \BBAVerseCAlt
        \context Lyrics = BBALyricsD \lyricsto BBAVoiceLyrics \BBAVerseD
        \context Lyrics = BBALyricsDAlt \lyricsto BBAVoiceLyrics \BBAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {222}
        \fontsize #6 \center-align \line {Troostend is my die gedagte}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {276}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBBStaffGroup <<
        \context Staff = BBBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBBVoiceLyrics \BBIAFxBGFMusicLyrics
            \context Voice = BBBVoiceRH \BBIAFxBGFMusicRH
        >>
        \new Lyrics  = BBBLyricsA
        \new Lyrics = BBBLyricsAAlt
        \new Lyrics  = BBBLyricsB
        \new Lyrics = BBBLyricsBAlt
        \new Lyrics  = BBBLyricsC
        \new Lyrics = BBBLyricsCAlt
        \new Lyrics  = BBBLyricsD
        \new Lyrics = BBBLyricsDAlt
        \context Staff = BBBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBBVoiceLH \BBIAFxBGFMusicLH
        >>
        \context Lyrics = BBBLyricsA \lyricsto BBBVoiceLyrics \BBBVerseA
        \context Lyrics = BBBLyricsAAlt \lyricsto BBBVoiceLyrics \BBBVerseAAlt
        \context Lyrics = BBBLyricsB \lyricsto BBBVoiceLyrics \BBBVerseB
        \context Lyrics = BBBLyricsBAlt \lyricsto BBBVoiceLyrics \BBBVerseBAlt
        \context Lyrics = BBBLyricsC \lyricsto BBBVoiceLyrics \BBBVerseC
        \context Lyrics = BBBLyricsCAlt \lyricsto BBBVoiceLyrics \BBBVerseCAlt
        \context Lyrics = BBBLyricsD \lyricsto BBBVoiceLyrics \BBBVerseD
        \context Lyrics = BBBLyricsDAlt \lyricsto BBBVoiceLyrics \BBBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {223}
        \fontsize #6 \center-align \line {Tyd snel tog so gou}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {103}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBCStaffGroup <<
        \context Staff = BBCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBCVoiceLyrics \BBIAGxAZCMusicLyrics
            \context Voice = BBCVoiceRH \BBIAGxAZCMusicRH
        >>
        \new Lyrics  = BBCLyricsA
        \new Lyrics = BBCLyricsAAlt
        \new Lyrics  = BBCLyricsB
        \new Lyrics = BBCLyricsBAlt
        \new Lyrics  = BBCLyricsC
        \new Lyrics = BBCLyricsCAlt
        \context Staff = BBCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBCVoiceLH \BBIAGxAZCMusicLH
        >>
        \context Lyrics = BBCLyricsA \lyricsto BBCVoiceLyrics \BBCVerseA
        \context Lyrics = BBCLyricsAAlt \lyricsto BBCVoiceLyrics \BBCVerseAAlt
        \context Lyrics = BBCLyricsB \lyricsto BBCVoiceLyrics \BBCVerseB
        \context Lyrics = BBCLyricsBAlt \lyricsto BBCVoiceLyrics \BBCVerseBAlt
        \context Lyrics = BBCLyricsC \lyricsto BBCVoiceLyrics \BBCVerseC
        \context Lyrics = BBCLyricsCAlt \lyricsto BBCVoiceLyrics \BBCVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {224}
        \fontsize #6 \center-align \line {U Bloedspoor wil ek volg}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {169}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBDStaffGroup <<
        \context Staff = BBDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBDVoiceLyrics \BBIAHxAFIMusicLyrics
            \context Voice = BBDVoiceRH \BBIAHxAFIMusicRH
        >>
        \new Lyrics  = BBDLyricsA
        \new Lyrics = BBDLyricsAAlt
        \new Lyrics  = BBDLyricsB
        \new Lyrics = BBDLyricsBAlt
        \new Lyrics  = BBDLyricsC
        \new Lyrics = BBDLyricsCAlt
        \new Lyrics  = BBDLyricsD
        \new Lyrics = BBDLyricsDAlt
        \context Staff = BBDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBDVoiceLH \BBIAHxAFIMusicLH
        >>
        \context Lyrics = BBDLyricsA \lyricsto BBDVoiceLyrics \BBDVerseA
        \context Lyrics = BBDLyricsAAlt \lyricsto BBDVoiceLyrics \BBDVerseAAlt
        \context Lyrics = BBDLyricsB \lyricsto BBDVoiceLyrics \BBDVerseB
        \context Lyrics = BBDLyricsBAlt \lyricsto BBDVoiceLyrics \BBDVerseBAlt
        \context Lyrics = BBDLyricsC \lyricsto BBDVoiceLyrics \BBDVerseC
        \context Lyrics = BBDLyricsCAlt \lyricsto BBDVoiceLyrics \BBDVerseCAlt
        \context Lyrics = BBDLyricsD \lyricsto BBDVoiceLyrics \BBDVerseD
        \context Lyrics = BBDLyricsDAlt \lyricsto BBDVoiceLyrics \BBDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {225}
        \fontsize #6 \center-align \line {U is waardig}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {385}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBEStaffGroup <<
        \context Staff = BBEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBEVoiceLyrics \BBIAIxCHEMusicLyrics
            \context Voice = BBEVoiceRH \BBIAIxCHEMusicRH
        >>
        \new Lyrics  = BBELyricsA
        \new Lyrics = BBELyricsAAlt
        \new Lyrics  = BBELyricsB
        \new Lyrics = BBELyricsBAlt
        \context Staff = BBEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBEVoiceLH \BBIAIxCHEMusicLH
        >>
        \context Lyrics = BBELyricsA \lyricsto BBEVoiceLyrics \BBEVerseA
        \context Lyrics = BBELyricsAAlt \lyricsto BBEVoiceLyrics \BBEVerseAAlt
        \context Lyrics = BBELyricsB \lyricsto BBEVoiceLyrics \BBEVerseB
        \context Lyrics = BBELyricsBAlt \lyricsto BBEVoiceLyrics \BBEVerseBAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {226}
        \fontsize #6 \center-align \line {Vader in genade}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {188}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBFStaffGroup <<
        \context Staff = BBFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBFVoiceLyrics \BBIBZxAHHMusicLyrics
            \context Voice = BBFVoiceRH \BBIBZxAHHMusicRH
        >>
        \new Lyrics  = BBFLyricsA
        \new Lyrics = BBFLyricsAAlt
        \new Lyrics  = BBFLyricsB
        \new Lyrics = BBFLyricsBAlt
        \new Lyrics  = BBFLyricsC
        \new Lyrics = BBFLyricsCAlt
        \new Lyrics  = BBFLyricsD
        \new Lyrics = BBFLyricsDAlt
        \context Staff = BBFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBFVoiceLH \BBIBZxAHHMusicLH
        >>
        \context Lyrics = BBFLyricsA \lyricsto BBFVoiceLyrics \BBFVerseA
        \context Lyrics = BBFLyricsAAlt \lyricsto BBFVoiceLyrics \BBFVerseAAlt
        \context Lyrics = BBFLyricsB \lyricsto BBFVoiceLyrics \BBFVerseB
        \context Lyrics = BBFLyricsBAlt \lyricsto BBFVoiceLyrics \BBFVerseBAlt
        \context Lyrics = BBFLyricsC \lyricsto BBFVoiceLyrics \BBFVerseC
        \context Lyrics = BBFLyricsCAlt \lyricsto BBFVoiceLyrics \BBFVerseCAlt
        \context Lyrics = BBFLyricsD \lyricsto BBFVoiceLyrics \BBFVerseD
        \context Lyrics = BBFLyricsDAlt \lyricsto BBFVoiceLyrics \BBFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {227}
        \fontsize #6 \center-align \line {Vader ons ontmoet}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {178}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBGStaffGroup <<
        \context Staff = BBGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBGVoiceLyrics \BBIBAxAGHMusicLyrics
            \context Voice = BBGVoiceRH \BBIBAxAGHMusicRH
        >>
        \new Lyrics  = BBGLyricsA
        \new Lyrics = BBGLyricsAAlt
        \new Lyrics  = BBGLyricsB
        \new Lyrics = BBGLyricsBAlt
        \new Lyrics  = BBGLyricsC
        \new Lyrics = BBGLyricsCAlt
        \new Lyrics  = BBGLyricsD
        \new Lyrics = BBGLyricsDAlt
        \new Lyrics  = BBGLyricsE
        \new Lyrics = BBGLyricsEAlt
        \new Lyrics  = BBGLyricsF
        \new Lyrics = BBGLyricsFAlt
        \context Staff = BBGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBGVoiceLH \BBIBAxAGHMusicLH
        >>
        \context Lyrics = BBGLyricsA \lyricsto BBGVoiceLyrics \BBGVerseA
        \context Lyrics = BBGLyricsAAlt \lyricsto BBGVoiceLyrics \BBGVerseAAlt
        \context Lyrics = BBGLyricsB \lyricsto BBGVoiceLyrics \BBGVerseB
        \context Lyrics = BBGLyricsBAlt \lyricsto BBGVoiceLyrics \BBGVerseBAlt
        \context Lyrics = BBGLyricsC \lyricsto BBGVoiceLyrics \BBGVerseC
        \context Lyrics = BBGLyricsCAlt \lyricsto BBGVoiceLyrics \BBGVerseCAlt
        \context Lyrics = BBGLyricsD \lyricsto BBGVoiceLyrics \BBGVerseD
        \context Lyrics = BBGLyricsDAlt \lyricsto BBGVoiceLyrics \BBGVerseDAlt
        \context Lyrics = BBGLyricsE \lyricsto BBGVoiceLyrics \BBGVerseE
        \context Lyrics = BBGLyricsEAlt \lyricsto BBGVoiceLyrics \BBGVerseEAlt
        \context Lyrics = BBGLyricsF \lyricsto BBGVoiceLyrics \BBGVerseF
        \context Lyrics = BBGLyricsFAlt \lyricsto BBGVoiceLyrics \BBGVerseFAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {228}
        \fontsize #6 \center-align \line {Van elke vlek, Heer, rein}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {24}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBHStaffGroup <<
        \context Staff = BBHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBHVoiceLyrics \BBIBBxBDMusicLyrics
            \context Voice = BBHVoiceRH \BBIBBxBDMusicRH
        >>
        \new Lyrics  = BBHLyricsA
        \new Lyrics = BBHLyricsAAlt
        \new Lyrics  = BBHLyricsB
        \new Lyrics = BBHLyricsBAlt
        \new Lyrics  = BBHLyricsC
        \new Lyrics = BBHLyricsCAlt
        \new Lyrics  = BBHLyricsD
        \new Lyrics = BBHLyricsDAlt
        \context Staff = BBHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBHVoiceLH \BBIBBxBDMusicLH
        >>
        \context Lyrics = BBHLyricsA \lyricsto BBHVoiceLyrics \BBHVerseA
        \context Lyrics = BBHLyricsAAlt \lyricsto BBHVoiceLyrics \BBHVerseAAlt
        \context Lyrics = BBHLyricsB \lyricsto BBHVoiceLyrics \BBHVerseB
        \context Lyrics = BBHLyricsBAlt \lyricsto BBHVoiceLyrics \BBHVerseBAlt
        \context Lyrics = BBHLyricsC \lyricsto BBHVoiceLyrics \BBHVerseC
        \context Lyrics = BBHLyricsCAlt \lyricsto BBHVoiceLyrics \BBHVerseCAlt
        \context Lyrics = BBHLyricsD \lyricsto BBHVoiceLyrics \BBHVerseD
        \context Lyrics = BBHLyricsDAlt \lyricsto BBHVoiceLyrics \BBHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {229}
        \fontsize #6 \center-align \line {Van hemelsluister}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {20}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BBIStaffGroup <<
        \context Staff = BBIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BBIVoiceLyrics \BBIBCxBZMusicLyrics
            \context Voice = BBIVoiceRH \BBIBCxBZMusicRH
        >>
        \new Lyrics  = BBILyricsA
        \new Lyrics = BBILyricsAAlt
        \new Lyrics  = BBILyricsB
        \new Lyrics = BBILyricsBAlt
        \new Lyrics  = BBILyricsC
        \new Lyrics = BBILyricsCAlt
        \new Lyrics  = BBILyricsD
        \new Lyrics = BBILyricsDAlt
        \context Staff = BBIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BBIVoiceLH \BBIBCxBZMusicLH
        >>
        \context Lyrics = BBILyricsA \lyricsto BBIVoiceLyrics \BBIVerseA
        \context Lyrics = BBILyricsAAlt \lyricsto BBIVoiceLyrics \BBIVerseAAlt
        \context Lyrics = BBILyricsB \lyricsto BBIVoiceLyrics \BBIVerseB
        \context Lyrics = BBILyricsBAlt \lyricsto BBIVoiceLyrics \BBIVerseBAlt
        \context Lyrics = BBILyricsC \lyricsto BBIVoiceLyrics \BBIVerseC
        \context Lyrics = BBILyricsCAlt \lyricsto BBIVoiceLyrics \BBIVerseCAlt
        \context Lyrics = BBILyricsD \lyricsto BBIVoiceLyrics \BBIVerseD
        \context Lyrics = BBILyricsDAlt \lyricsto BBIVoiceLyrics \BBIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {230}
        \fontsize #6 \center-align \line {Van sonde siek, verlore}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {23}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCZStaffGroup <<
        \context Staff = BCZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCZVoiceLyrics \BBIBDxBCMusicLyrics
            \context Voice = BCZVoiceRH \BBIBDxBCMusicRH
        >>
        \new Lyrics  = BCZLyricsA
        \new Lyrics = BCZLyricsAAlt
        \new Lyrics  = BCZLyricsB
        \new Lyrics = BCZLyricsBAlt
        \new Lyrics  = BCZLyricsC
        \new Lyrics = BCZLyricsCAlt
        \context Staff = BCZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCZVoiceLH \BBIBDxBCMusicLH
        >>
        \context Lyrics = BCZLyricsA \lyricsto BCZVoiceLyrics \BCZVerseA
        \context Lyrics = BCZLyricsAAlt \lyricsto BCZVoiceLyrics \BCZVerseAAlt
        \context Lyrics = BCZLyricsB \lyricsto BCZVoiceLyrics \BCZVerseB
        \context Lyrics = BCZLyricsBAlt \lyricsto BCZVoiceLyrics \BCZVerseBAlt
        \context Lyrics = BCZLyricsC \lyricsto BCZVoiceLyrics \BCZVerseC
        \context Lyrics = BCZLyricsCAlt \lyricsto BCZVoiceLyrics \BCZVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {231}
        \fontsize #6 \center-align \line {Vergeet hul nie}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {406}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCAStaffGroup <<
        \context Staff = BCAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCAVoiceLyrics \BBIBExDZFMusicLyrics
            \context Voice = BCAVoiceRH \BBIBExDZFMusicRH
        >>
        \new Lyrics  = BCALyricsA
        \new Lyrics = BCALyricsAAlt
        \new Lyrics  = BCALyricsB
        \new Lyrics = BCALyricsBAlt
        \new Lyrics  = BCALyricsC
        \new Lyrics = BCALyricsCAlt
        \new Lyrics  = BCALyricsD
        \new Lyrics = BCALyricsDAlt
        \new Lyrics  = BCALyricsE
        \new Lyrics = BCALyricsEAlt
        \context Staff = BCAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCAVoiceLH \BBIBExDZFMusicLH
        >>
        \context Lyrics = BCALyricsA \lyricsto BCAVoiceLyrics \BCAVerseA
        \context Lyrics = BCALyricsAAlt \lyricsto BCAVoiceLyrics \BCAVerseAAlt
        \context Lyrics = BCALyricsB \lyricsto BCAVoiceLyrics \BCAVerseB
        \context Lyrics = BCALyricsBAlt \lyricsto BCAVoiceLyrics \BCAVerseBAlt
        \context Lyrics = BCALyricsC \lyricsto BCAVoiceLyrics \BCAVerseC
        \context Lyrics = BCALyricsCAlt \lyricsto BCAVoiceLyrics \BCAVerseCAlt
        \context Lyrics = BCALyricsD \lyricsto BCAVoiceLyrics \BCAVerseD
        \context Lyrics = BCALyricsDAlt \lyricsto BCAVoiceLyrics \BCAVerseDAlt
        \context Lyrics = BCALyricsE \lyricsto BCAVoiceLyrics \BCAVerseE
        \context Lyrics = BCALyricsEAlt \lyricsto BCAVoiceLyrics \BCAVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {232}
        \fontsize #6 \center-align \line {Vol blydskap in die Heer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {268}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCBStaffGroup <<
        \context Staff = BCBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCBVoiceLyrics \BBIBFxBFHMusicLyrics
            \context Voice = BCBVoiceRH \BBIBFxBFHMusicRH
        >>
        \new Lyrics  = BCBLyricsA
        \new Lyrics = BCBLyricsAAlt
        \new Lyrics  = BCBLyricsB
        \new Lyrics = BCBLyricsBAlt
        \new Lyrics  = BCBLyricsC
        \new Lyrics = BCBLyricsCAlt
        \new Lyrics  = BCBLyricsD
        \new Lyrics = BCBLyricsDAlt
        \context Staff = BCBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCBVoiceLH \BBIBFxBFHMusicLH
        >>
        \context Lyrics = BCBLyricsA \lyricsto BCBVoiceLyrics \BCBVerseA
        \context Lyrics = BCBLyricsAAlt \lyricsto BCBVoiceLyrics \BCBVerseAAlt
        \context Lyrics = BCBLyricsB \lyricsto BCBVoiceLyrics \BCBVerseB
        \context Lyrics = BCBLyricsBAlt \lyricsto BCBVoiceLyrics \BCBVerseBAlt
        \context Lyrics = BCBLyricsC \lyricsto BCBVoiceLyrics \BCBVerseC
        \context Lyrics = BCBLyricsCAlt \lyricsto BCBVoiceLyrics \BCBVerseCAlt
        \context Lyrics = BCBLyricsD \lyricsto BCBVoiceLyrics \BCBVerseD
        \context Lyrics = BCBLyricsDAlt \lyricsto BCBVoiceLyrics \BCBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {233}
        \fontsize #6 \center-align \line {Volsalig' ure van gebed}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {77}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCCStaffGroup <<
        \context Staff = BCCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCCVoiceLyrics \CAFEBxGGNoChorusMusicLyrics
            \context Voice = BCCVoiceRH \CAFEBxGGNoChorusMusicRH
        >>
        \new Lyrics  = BCCLyricsA
        \new Lyrics = BCCLyricsAAlt
        \new Lyrics  = BCCLyricsB
        \new Lyrics = BCCLyricsBAlt
        \new Lyrics  = BCCLyricsC
        \new Lyrics = BCCLyricsCAlt
        \context Staff = BCCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCCVoiceLH \CAFEBxGGNoChorusMusicLH
        >>
        \context Lyrics = BCCLyricsA \lyricsto BCCVoiceLyrics \BCCVerseA
        \context Lyrics = BCCLyricsAAlt \lyricsto BCCVoiceLyrics \BCCVerseAAlt
        \context Lyrics = BCCLyricsB \lyricsto BCCVoiceLyrics \BCCVerseB
        \context Lyrics = BCCLyricsBAlt \lyricsto BCCVoiceLyrics \BCCVerseBAlt
        \context Lyrics = BCCLyricsC \lyricsto BCCVoiceLyrics \BCCVerseC
        \context Lyrics = BCCLyricsCAlt \lyricsto BCCVoiceLyrics \BCCVerseCAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {234}
        \fontsize #6 \center-align \line {Voor ons skei}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {328}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCDStaffGroup <<
        \context Staff = BCDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCDVoiceLyrics \BBIBHxCBHMusicLyrics
            \context Voice = BCDVoiceRH \BBIBHxCBHMusicRH
        >>
        \new Lyrics  = BCDLyricsA
        \new Lyrics = BCDLyricsAAlt
        \new Lyrics  = BCDLyricsB
        \new Lyrics = BCDLyricsBAlt
        \new Lyrics  = BCDLyricsC
        \new Lyrics = BCDLyricsCAlt
        \new Lyrics  = BCDLyricsD
        \new Lyrics = BCDLyricsDAlt
        \context Staff = BCDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCDVoiceLH \BBIBHxCBHMusicLH
        >>
        \context Lyrics = BCDLyricsA \lyricsto BCDVoiceLyrics \BCDVerseA
        \context Lyrics = BCDLyricsAAlt \lyricsto BCDVoiceLyrics \BCDVerseAAlt
        \context Lyrics = BCDLyricsB \lyricsto BCDVoiceLyrics \BCDVerseB
        \context Lyrics = BCDLyricsBAlt \lyricsto BCDVoiceLyrics \BCDVerseBAlt
        \context Lyrics = BCDLyricsC \lyricsto BCDVoiceLyrics \BCDVerseC
        \context Lyrics = BCDLyricsCAlt \lyricsto BCDVoiceLyrics \BCDVerseCAlt
        \context Lyrics = BCDLyricsD \lyricsto BCDVoiceLyrics \BCDVerseD
        \context Lyrics = BCDLyricsDAlt \lyricsto BCDVoiceLyrics \BCDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {235}
        \fontsize #6 \center-align \line {Vriend'lik versoekend}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {126}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCEStaffGroup <<
        \context Staff = BCEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCEVoiceLyrics \BBIBIxABEMusicLyrics
            \context Voice = BCEVoiceRH \BBIBIxABEMusicRH
        >>
        \new Lyrics  = BCELyricsA
        \new Lyrics = BCELyricsAAlt
        \new Lyrics  = BCELyricsB
        \new Lyrics = BCELyricsBAlt
        \new Lyrics  = BCELyricsC
        \new Lyrics = BCELyricsCAlt
        \new Lyrics  = BCELyricsD
        \new Lyrics = BCELyricsDAlt
        \context Staff = BCEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCEVoiceLH \BBIBIxABEMusicLH
        >>
        \context Lyrics = BCELyricsA \lyricsto BCEVoiceLyrics \BCEVerseA
        \context Lyrics = BCELyricsAAlt \lyricsto BCEVoiceLyrics \BCEVerseAAlt
        \context Lyrics = BCELyricsB \lyricsto BCEVoiceLyrics \BCEVerseB
        \context Lyrics = BCELyricsBAlt \lyricsto BCEVoiceLyrics \BCEVerseBAlt
        \context Lyrics = BCELyricsC \lyricsto BCEVoiceLyrics \BCEVerseC
        \context Lyrics = BCELyricsCAlt \lyricsto BCEVoiceLyrics \BCEVerseCAlt
        \context Lyrics = BCELyricsD \lyricsto BCEVoiceLyrics \BCEVerseD
        \context Lyrics = BCELyricsDAlt \lyricsto BCEVoiceLyrics \BCEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {236}
        \fontsize #6 \center-align \line {Waar alles stil}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {313}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCFStaffGroup <<
        \context Staff = BCFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCFVoiceLyrics \BBICZxCACMusicLyrics
            \context Voice = BCFVoiceRH \BBICZxCACMusicRH
        >>
        \new Lyrics  = BCFLyricsA
        \new Lyrics = BCFLyricsAAlt
        \new Lyrics  = BCFLyricsB
        \new Lyrics = BCFLyricsBAlt
        \new Lyrics  = BCFLyricsC
        \new Lyrics = BCFLyricsCAlt
        \new Lyrics  = BCFLyricsD
        \new Lyrics = BCFLyricsDAlt
        \new Lyrics  = BCFLyricsE
        \new Lyrics = BCFLyricsEAlt
        \context Staff = BCFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCFVoiceLH \BBICZxCACMusicLH
        >>
        \context Lyrics = BCFLyricsA \lyricsto BCFVoiceLyrics \BCFVerseA
        \context Lyrics = BCFLyricsAAlt \lyricsto BCFVoiceLyrics \BCFVerseAAlt
        \context Lyrics = BCFLyricsB \lyricsto BCFVoiceLyrics \BCFVerseB
        \context Lyrics = BCFLyricsBAlt \lyricsto BCFVoiceLyrics \BCFVerseBAlt
        \context Lyrics = BCFLyricsC \lyricsto BCFVoiceLyrics \BCFVerseC
        \context Lyrics = BCFLyricsCAlt \lyricsto BCFVoiceLyrics \BCFVerseCAlt
        \context Lyrics = BCFLyricsD \lyricsto BCFVoiceLyrics \BCFVerseD
        \context Lyrics = BCFLyricsDAlt \lyricsto BCFVoiceLyrics \BCFVerseDAlt
        \context Lyrics = BCFLyricsE \lyricsto BCFVoiceLyrics \BCFVerseE
        \context Lyrics = BCFLyricsEAlt \lyricsto BCFVoiceLyrics \BCFVerseEAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {237}
        \fontsize #6 \center-align \line {Waar eensaam bergtop}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {243}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCGStaffGroup <<
        \context Staff = BCGStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCGVoiceLyrics \BBICAxBDCMusicLyrics
            \context Voice = BCGVoiceRH \BBICAxBDCMusicRH
        >>
        \new Lyrics  = BCGLyricsA
        \new Lyrics = BCGLyricsAAlt
        \new Lyrics  = BCGLyricsB
        \new Lyrics = BCGLyricsBAlt
        \new Lyrics  = BCGLyricsC
        \new Lyrics = BCGLyricsCAlt
        \new Lyrics  = BCGLyricsD
        \new Lyrics = BCGLyricsDAlt
        \context Staff = BCGStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCGVoiceLH \BBICAxBDCMusicLH
        >>
        \context Lyrics = BCGLyricsA \lyricsto BCGVoiceLyrics \BCGVerseA
        \context Lyrics = BCGLyricsAAlt \lyricsto BCGVoiceLyrics \BCGVerseAAlt
        \context Lyrics = BCGLyricsB \lyricsto BCGVoiceLyrics \BCGVerseB
        \context Lyrics = BCGLyricsBAlt \lyricsto BCGVoiceLyrics \BCGVerseBAlt
        \context Lyrics = BCGLyricsC \lyricsto BCGVoiceLyrics \BCGVerseC
        \context Lyrics = BCGLyricsCAlt \lyricsto BCGVoiceLyrics \BCGVerseCAlt
        \context Lyrics = BCGLyricsD \lyricsto BCGVoiceLyrics \BCGVerseD
        \context Lyrics = BCGLyricsDAlt \lyricsto BCGVoiceLyrics \BCGVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {238}
        \fontsize #6 \center-align \line {Waar is daar lig}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {36}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCHStaffGroup <<
        \context Staff = BCHStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCHVoiceLyrics \BBICBxCFMusicLyrics
            \context Voice = BCHVoiceRH \BBICBxCFMusicRH
        >>
        \new Lyrics  = BCHLyricsA
        \new Lyrics = BCHLyricsAAlt
        \new Lyrics  = BCHLyricsB
        \new Lyrics = BCHLyricsBAlt
        \new Lyrics  = BCHLyricsC
        \new Lyrics = BCHLyricsCAlt
        \new Lyrics  = BCHLyricsD
        \new Lyrics = BCHLyricsDAlt
        \context Staff = BCHStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCHVoiceLH \BBICBxCFMusicLH
        >>
        \context Lyrics = BCHLyricsA \lyricsto BCHVoiceLyrics \BCHVerseA
        \context Lyrics = BCHLyricsAAlt \lyricsto BCHVoiceLyrics \BCHVerseAAlt
        \context Lyrics = BCHLyricsB \lyricsto BCHVoiceLyrics \BCHVerseB
        \context Lyrics = BCHLyricsBAlt \lyricsto BCHVoiceLyrics \BCHVerseBAlt
        \context Lyrics = BCHLyricsC \lyricsto BCHVoiceLyrics \BCHVerseC
        \context Lyrics = BCHLyricsCAlt \lyricsto BCHVoiceLyrics \BCHVerseCAlt
        \context Lyrics = BCHLyricsD \lyricsto BCHVoiceLyrics \BCHVerseD
        \context Lyrics = BCHLyricsDAlt \lyricsto BCHVoiceLyrics \BCHVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {239}
        \fontsize #6 \center-align \line {Waar ons nou te saam}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {179}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BCIStaffGroup <<
        \context Staff = BCIStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BCIVoiceLyrics \BBICCxAGIMusicLyrics
            \context Voice = BCIVoiceRH \BBICCxAGIMusicRH
        >>
        \new Lyrics  = BCILyricsA
        \new Lyrics = BCILyricsAAlt
        \new Lyrics  = BCILyricsB
        \new Lyrics = BCILyricsBAlt
        \new Lyrics  = BCILyricsC
        \new Lyrics = BCILyricsCAlt
        \new Lyrics  = BCILyricsD
        \new Lyrics = BCILyricsDAlt
        \context Staff = BCIStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BCIVoiceLH \BBICCxAGIMusicLH
        >>
        \context Lyrics = BCILyricsA \lyricsto BCIVoiceLyrics \BCIVerseA
        \context Lyrics = BCILyricsAAlt \lyricsto BCIVoiceLyrics \BCIVerseAAlt
        \context Lyrics = BCILyricsB \lyricsto BCIVoiceLyrics \BCIVerseB
        \context Lyrics = BCILyricsBAlt \lyricsto BCIVoiceLyrics \BCIVerseBAlt
        \context Lyrics = BCILyricsC \lyricsto BCIVoiceLyrics \BCIVerseC
        \context Lyrics = BCILyricsCAlt \lyricsto BCIVoiceLyrics \BCIVerseCAlt
        \context Lyrics = BCILyricsD \lyricsto BCIVoiceLyrics \BCIVerseD
        \context Lyrics = BCILyricsDAlt \lyricsto BCIVoiceLyrics \BCIVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {240}
        \fontsize #6 \center-align \line {Waar sal ek vlug}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {153}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDZStaffGroup <<
        \context Staff = BDZStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDZVoiceLyrics \BBICDxAECMusicLyrics
            \context Voice = BDZVoiceRH \BBICDxAECMusicRH
        >>
        \new Lyrics  = BDZLyricsA
        \new Lyrics = BDZLyricsAAlt
        \new Lyrics  = BDZLyricsB
        \new Lyrics = BDZLyricsBAlt
        \new Lyrics  = BDZLyricsC
        \new Lyrics = BDZLyricsCAlt
        \new Lyrics  = BDZLyricsD
        \new Lyrics = BDZLyricsDAlt
        \context Staff = BDZStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDZVoiceLH \BBICDxAECMusicLH
        >>
        \context Lyrics = BDZLyricsA \lyricsto BDZVoiceLyrics \BDZVerseA
        \context Lyrics = BDZLyricsAAlt \lyricsto BDZVoiceLyrics \BDZVerseAAlt
        \context Lyrics = BDZLyricsB \lyricsto BDZVoiceLyrics \BDZVerseB
        \context Lyrics = BDZLyricsBAlt \lyricsto BDZVoiceLyrics \BDZVerseBAlt
        \context Lyrics = BDZLyricsC \lyricsto BDZVoiceLyrics \BDZVerseC
        \context Lyrics = BDZLyricsCAlt \lyricsto BDZVoiceLyrics \BDZVerseCAlt
        \context Lyrics = BDZLyricsD \lyricsto BDZVoiceLyrics \BDZVerseD
        \context Lyrics = BDZLyricsDAlt \lyricsto BDZVoiceLyrics \BDZVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {241}
        \fontsize #6 \center-align \line {Waar u huiswaarts reis}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {318}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDAStaffGroup <<
        \context Staff = BDAStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDAVoiceLyrics \BBICExCAHMusicLyrics
            \context Voice = BDAVoiceRH \BBICExCAHMusicRH
        >>
        \new Lyrics  = BDALyricsA
        \new Lyrics = BDALyricsAAlt
        \new Lyrics  = BDALyricsB
        \new Lyrics = BDALyricsBAlt
        \new Lyrics  = BDALyricsC
        \new Lyrics = BDALyricsCAlt
        \new Lyrics  = BDALyricsD
        \new Lyrics = BDALyricsDAlt
        \context Staff = BDAStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDAVoiceLH \BBICExCAHMusicLH
        >>
        \context Lyrics = BDALyricsA \lyricsto BDAVoiceLyrics \BDAVerseA
        \context Lyrics = BDALyricsAAlt \lyricsto BDAVoiceLyrics \BDAVerseAAlt
        \context Lyrics = BDALyricsB \lyricsto BDAVoiceLyrics \BDAVerseB
        \context Lyrics = BDALyricsBAlt \lyricsto BDAVoiceLyrics \BDAVerseBAlt
        \context Lyrics = BDALyricsC \lyricsto BDAVoiceLyrics \BDAVerseC
        \context Lyrics = BDALyricsCAlt \lyricsto BDAVoiceLyrics \BDAVerseCAlt
        \context Lyrics = BDALyricsD \lyricsto BDAVoiceLyrics \BDAVerseD
        \context Lyrics = BDALyricsDAlt \lyricsto BDAVoiceLyrics \BDAVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {242}
        \fontsize #6 \center-align \line {Was daar ooit so teer}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {54}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDBStaffGroup <<
        \context Staff = BDBStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDBVoiceLyrics \BBICFxEDMusicLyrics
            \context Voice = BDBVoiceRH \BBICFxEDMusicRH
        >>
        \new Lyrics  = BDBLyricsA
        \new Lyrics = BDBLyricsAAlt
        \new Lyrics  = BDBLyricsB
        \new Lyrics = BDBLyricsBAlt
        \new Lyrics  = BDBLyricsC
        \new Lyrics = BDBLyricsCAlt
        \new Lyrics  = BDBLyricsD
        \new Lyrics = BDBLyricsDAlt
        \context Staff = BDBStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDBVoiceLH \BBICFxEDMusicLH
        >>
        \context Lyrics = BDBLyricsA \lyricsto BDBVoiceLyrics \BDBVerseA
        \context Lyrics = BDBLyricsAAlt \lyricsto BDBVoiceLyrics \BDBVerseAAlt
        \context Lyrics = BDBLyricsB \lyricsto BDBVoiceLyrics \BDBVerseB
        \context Lyrics = BDBLyricsBAlt \lyricsto BDBVoiceLyrics \BDBVerseBAlt
        \context Lyrics = BDBLyricsC \lyricsto BDBVoiceLyrics \BDBVerseC
        \context Lyrics = BDBLyricsCAlt \lyricsto BDBVoiceLyrics \BDBVerseCAlt
        \context Lyrics = BDBLyricsD \lyricsto BDBVoiceLyrics \BDBVerseD
        \context Lyrics = BDBLyricsDAlt \lyricsto BDBVoiceLyrics \BDBVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {243}
        \fontsize #6 \center-align \line {Was dit vir my}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {8}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDCStaffGroup <<
        \context Staff = BDCStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDCVoiceLyrics \BBICGxHMusicLyrics
            \context Voice = BDCVoiceRH \BBICGxHMusicRH
        >>
        \new Lyrics  = BDCLyricsA
        \new Lyrics = BDCLyricsAAlt
        \new Lyrics  = BDCLyricsB
        \new Lyrics = BDCLyricsBAlt
        \new Lyrics  = BDCLyricsC
        \new Lyrics = BDCLyricsCAlt
        \new Lyrics  = BDCLyricsD
        \new Lyrics = BDCLyricsDAlt
        \context Staff = BDCStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDCVoiceLH \BBICGxHMusicLH
        >>
        \context Lyrics = BDCLyricsA \lyricsto BDCVoiceLyrics \BDCVerseA
        \context Lyrics = BDCLyricsAAlt \lyricsto BDCVoiceLyrics \BDCVerseAAlt
        \context Lyrics = BDCLyricsB \lyricsto BDCVoiceLyrics \BDCVerseB
        \context Lyrics = BDCLyricsBAlt \lyricsto BDCVoiceLyrics \BDCVerseBAlt
        \context Lyrics = BDCLyricsC \lyricsto BDCVoiceLyrics \BDCVerseC
        \context Lyrics = BDCLyricsCAlt \lyricsto BDCVoiceLyrics \BDCVerseCAlt
        \context Lyrics = BDCLyricsD \lyricsto BDCVoiceLyrics \BDCVerseD
        \context Lyrics = BDCLyricsDAlt \lyricsto BDCVoiceLyrics \BDCVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {244}
        \fontsize #6 \center-align \line {Was my, o Lam van God}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {17}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDDStaffGroup <<
        \context Staff = BDDStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDDVoiceLyrics \BBICHxAGMusicLyrics
            \context Voice = BDDVoiceRH \BBICHxAGMusicRH
        >>
        \new Lyrics  = BDDLyricsA
        \new Lyrics = BDDLyricsAAlt
        \new Lyrics  = BDDLyricsB
        \new Lyrics = BDDLyricsBAlt
        \new Lyrics  = BDDLyricsC
        \new Lyrics = BDDLyricsCAlt
        \new Lyrics  = BDDLyricsD
        \new Lyrics = BDDLyricsDAlt
        \context Staff = BDDStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDDVoiceLH \BBICHxAGMusicLH
        >>
        \context Lyrics = BDDLyricsA \lyricsto BDDVoiceLyrics \BDDVerseA
        \context Lyrics = BDDLyricsAAlt \lyricsto BDDVoiceLyrics \BDDVerseAAlt
        \context Lyrics = BDDLyricsB \lyricsto BDDVoiceLyrics \BDDVerseB
        \context Lyrics = BDDLyricsBAlt \lyricsto BDDVoiceLyrics \BDDVerseBAlt
        \context Lyrics = BDDLyricsC \lyricsto BDDVoiceLyrics \BDDVerseC
        \context Lyrics = BDDLyricsCAlt \lyricsto BDDVoiceLyrics \BDDVerseCAlt
        \context Lyrics = BDDLyricsD \lyricsto BDDVoiceLyrics \BDDVerseD
        \context Lyrics = BDDLyricsDAlt \lyricsto BDDVoiceLyrics \BDDVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {245}
        \fontsize #6 \center-align \line {Wees stil, laat Hy u vorm}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {88}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDEStaffGroup <<
        \context Staff = BDEStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDEVoiceLyrics \BBICIxHHMusicLyrics
            \context Voice = BDEVoiceRH \BBICIxHHMusicRH
        >>
        \new Lyrics  = BDELyricsA
        \new Lyrics = BDELyricsAAlt
        \new Lyrics  = BDELyricsB
        \new Lyrics = BDELyricsBAlt
        \new Lyrics  = BDELyricsC
        \new Lyrics = BDELyricsCAlt
        \new Lyrics  = BDELyricsD
        \new Lyrics = BDELyricsDAlt
        \context Staff = BDEStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDEVoiceLH \BBICIxHHMusicLH
        >>
        \context Lyrics = BDELyricsA \lyricsto BDEVoiceLyrics \BDEVerseA
        \context Lyrics = BDELyricsAAlt \lyricsto BDEVoiceLyrics \BDEVerseAAlt
        \context Lyrics = BDELyricsB \lyricsto BDEVoiceLyrics \BDEVerseB
        \context Lyrics = BDELyricsBAlt \lyricsto BDEVoiceLyrics \BDEVerseBAlt
        \context Lyrics = BDELyricsC \lyricsto BDEVoiceLyrics \BDEVerseC
        \context Lyrics = BDELyricsCAlt \lyricsto BDEVoiceLyrics \BDEVerseCAlt
        \context Lyrics = BDELyricsD \lyricsto BDEVoiceLyrics \BDEVerseD
        \context Lyrics = BDELyricsDAlt \lyricsto BDEVoiceLyrics \BDEVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

\markup \column{
    \justify-line {
        \fontsize #6 \bold {246}
        \fontsize #6 \center-align \line {Welsalig wie opreg}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {356}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = BDFStaffGroup <<
        \context Staff = BDFStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = BDFVoiceLyrics \BBIDZxCEFMusicLyrics
            \context Voice = BDFVoiceRH \BBIDZxCEFMusicRH
        >>
        \new Lyrics  = BDFLyricsA
        \new Lyrics = BDFLyricsAAlt
        \new Lyrics  = BDFLyricsB
        \new Lyrics = BDFLyricsBAlt
        \new Lyrics  = BDFLyricsC
        \new Lyrics = BDFLyricsCAlt
        \new Lyrics  = BDFLyricsD
        \new Lyrics = BDFLyricsDAlt
        \context Staff = BDFStaffLH <<
            \set Staff.printPartCombineTexts = ##f
            \context Voice = BDFVoiceLH \BBIDZxCEFMusicLH
        >>
        \context Lyrics = BDFLyricsA \lyricsto BDFVoiceLyrics \BDFVerseA
        \context Lyrics = BDFLyricsAAlt \lyricsto BDFVoiceLyrics \BDFVerseAAlt
        \context Lyrics = BDFLyricsB \lyricsto BDFVoiceLyrics \BDFVerseB
        \context Lyrics = BDFLyricsBAlt \lyricsto BDFVoiceLyrics \BDFVerseBAlt
        \context Lyrics = BDFLyricsC \lyricsto BDFVoiceLyrics \BDFVerseC
        \context Lyrics = BDFLyricsCAlt \lyricsto BDFVoiceLyrics \BDFVerseCAlt
        \context Lyrics = BDFLyricsD \lyricsto BDFVoiceLyrics \BDFVerseD
        \context Lyrics = BDFLyricsDAlt \lyricsto BDFVoiceLyrics \BDFVerseDAlt

    >>
    \include "../Lib/HymnScoreSettings.ly"
>>
\include "../Lib/HymnLayoutOutput.ly"
}

}
