\version "2.18.2"
\include "../Lib/MusicCommon.ly"
GZZDDxBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 6/8
    \key as \major
    
}
GZZDDxBMusicRHA = \relative c'{ \GZZDDxBMusicGlobal \clef "treble"
    ees8. ees16 ees8 ees4 f8 | %1
aes4 aes8 aes4. | %2
bes8. bes16 bes8 bes4 des8 | c4 c8 c4. | %4
ees8. ees16 ees8 ees4 des8 | c4 c8 c4. | %6
bes8. c16 des8 c4 bes8 | %7
aes4 g8 aes4. \cbp | %8
c \postCho ees,8. f16 ees8 | %9
\nbp aes4. aes | bes bes8. c16 des8 | %11
\nbp c4. c | ees8. ees16 ees8 ees4 des8 | %13
c4 c8 c4. | bes8. c16 des8 c4 bes8 aes4 g8 aes4. \he
}
GZZDDxBMusicRHB = \relative c'{ \GZZDDxBMusicGlobal \clef "treble"
    c8. c16 c8 c4 des8 | c4 c8 c4. | %2
ees8. ees16 ees8 ees4 ees8 | %3
ees4 ees8 ees4. | %4
ees8. ees16 ees8 ees4 ees8 | %5
ees4 ees8 ees4. | %6
des8. ees16 ees8 ees4 f8 | ees4 des8 c4. | %8
ees c8. des16 c8 | c4. c | %10
ees ees8. ees16 ees8 | ees4. ees | %12
ees8. ees16 ees8 ees4 ees8 | %13
ees4 ees8 ees4. | %14
des8. ees16 ees8 ees4 f8 ees4 des8 c4.
}
GZZDDxBMusicRH =  \partcombine #'(2 . 20)  \GZZDDxBMusicRHA \GZZDDxBMusicRHB
GZZDDxBMusicLHA = \relative c{ \GZZDDxBMusicGlobal \clef "bass"
    aes'8. aes16 aes8 aes4 aes8 | %1
ees4 ees8 ees4. | %2
g8. g16 g8 g4 bes8 \pcAO | %3
aes4 \pcAO aes8 \pcAO aes4. | %4
c8. c16 c8 c4 bes8 \pcAO | %5
aes4 \pcAO aes8 \pcAO aes4. | %6
f8. aes16 g8 aes4 des8 | c4 bes8 aes4. | %8
aes aes8. aes16 aes8 | ees4. ees | %10
g g8. aes16 g8 | aes4. aes | %12
c8. c16 c8 c4 bes8 \pcAO | %13
aes4 \pcAO aes8 \pcAO aes4. | %14
f8. aes16 g8 aes4 des8 c4 bes8 aes4.
}
GZZDDxBMusicLHB = \relative c{ \GZZDDxBMusicGlobal \clef "bass"
    aes8. aes16 aes8 aes4 aes8 | %1
aes4 aes8 aes4. | %2
ees'8. ees16 ees8 ees4 g8 | %3
aes4 aes8 aes4. | %4
aes8. aes16 aes8 aes4 g8 | %5
aes4 aes8 aes4. | des,8. c16 bes8 c4 des8 | %7
ees4 ees8 aes,4. | aes aes8. aes16 aes8 | %9
aes4. aes | ees' ees8. ees16 ees8 | %11
aes,4. aes | aes'8. aes16 aes8 aes4 g8 | %13
aes4 aes8 aes4. | des,8. c16 bes8 c4 des8 ees4 ees8 aes,4.
}
GZZDDxBMusicLH =  \partcombine #'(2 . 20)  \GZZDDxBMusicLHA \GZZDDxBMusicLHB
GZZDDxBMusicLyrics = \relative c''''{ \GZZDDxBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c4. c8. c16 c8 c4. c4. c4. c8. c16 c8 c4. c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4.
}

