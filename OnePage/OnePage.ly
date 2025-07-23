\version "2.18.2"
#(ly:set-option 'point-and-click #f)
\include "OnePageLyrics.ly"
chorusStr = Koor
\include "OnePageMusic.ly"
\include "../Lib/HymnSetup.ly"
#(set! paper-alist (cons '("my size" . (cons (* 148 mm) (* 210 mm))) paper-alist))
#(set-default-paper-size "my size")
#(set-global-staff-size 14.7168) 

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
 markup-markup-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 0) (stretchability . 0))}
\include "../Lib/HymnCommon.ly"
\layout {
  \context {
    \Score
 \override LyricText #'font-size = #-.633600000000001 }}

\bookpart {
\include "../Lib/HymnBookPartSetup.ly"
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

}
