\version "2.18.2"
#(ly:set-option 'point-and-click #f)
\include "OnePageLyrics.ly"
chorusStr = Chorus
\include "OnePageMusic.ly"
\include "../Lib/HymnSetup.ly"
#(set! paper-alist (cons '("my size" . (cons (* 148 mm) (* 210 mm))) paper-alist))
#(set-default-paper-size "my size")
#(set-global-staff-size 14.4) 

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
        \fontsize #6 \center-align \line {ስለየሱስ ብዙ}
        \null
    }
    \justify-line {
        \null\fontsize #-1 \center-align \line {More about Jesus (2)}\null
    }
    \vspace #-10
}
\noPageBreak
\score { <<
    \context StaffGroup = AStaffGroup <<
        \context Staff = AStaffRH <<
            \override Staff.BarLine #'allow-span-bar  = ##f
            \set Staff.printPartCombineTexts = ##f
            \context NullVoice = AVoiceLyrics \GZZDDxBMusicLyrics
            \context Voice = AVoiceRH \GZZDDxBMusicRH
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
            \context Voice = AVoiceLH \GZZDDxBMusicLH
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

}
