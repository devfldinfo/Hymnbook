\version "2.18.2"
\include "../Lib/MusicCommon.ly"
BBGEFxCCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 6/4
    \key as \major
}
BBGEFxCCMusicRHA = \relative c'{ \BBGEFxCCMusicGlobal \clef "treble"
    c'4 b c des c b |  \nbp c2. aes | %2
aes4 g aes bes aes f | %3
\nbp ees2.~ees2 r4 | c' b c des c b | %5
\nbp c2. aes | aes4 g aes c (bes) aes | %7
\nbp bes2.~bes2 r4 | %8
des des des des des des | %9
\nbp des2. c2. | ees4 ees ees ees des c | %11
\nbp bes2.~bes2 r4 | c c c c b c | %13
ees2. des | c4 bes aes \set Score.tempoHideNote = ##t \tempo 2 = 32  \fpre ees \fpost \set Score.tempoHideNote = ##t \tempo 2 = 64    c' bes | %15
\nbp aes2.~aes2 r4 \cbp \pcAO | %16
aes \postCho \pcAO g \pcAO f \pcAO aes \pcAO g \pcAO f | %17
g2. g | aes4 aes aes bes aes bes | %19
\nbp c2.~c2 r4 | c bes aes c bes aes | %21
ees'2. des | c4 bes aes ees c' bes \nbp aes2.~aes2 r4 \he
}
BBGEFxCCMusicRHB = \relative c'{ \BBGEFxCCMusicGlobal \clef "treble"
    ees4 d ees f ees d | ees2. c | %2
f4 e f e f des | c2.~c2 r4 | %4
ees d ees f ees d | ees2. c | %6
d4 d d d (d) d | des!2.~des2 r4 | %8
g f ees g f ees | bes' (f g) aes2. | %10
c4 bes aes g g aes | g2.~g2 r4 | %12
aes g f ees d ees | ges (aes ges) f2. | %14
ees4 des c c ees des | c2.~c2 r4 | %16
aes' g f aes g f | e2. e | c4 c c f f f | %19
e g f e2 r4 | ees ees ees ees ees ees | %21
ges2. f | ees4 des c c ees des c2.~c2 r4
}
BBGEFxCCMusicRH =  \partcombine #'(2 . 20)  \BBGEFxCCMusicRHA \BBGEFxCCMusicRHB
BBGEFxCCMusicLHA = \relative c{ \BBGEFxCCMusicGlobal \clef "bass"
    aes'4 aes aes aes aes aes | aes2. aes | %2
aes4 aes aes aes aes aes | %3
aes2.~aes2 r4 | aes aes aes aes aes aes | %5
aes2. aes | f4 f f aes (g) f | %7
g (bes aes g2) r4 | bes aes g bes aes g | %9
g (aes bes) \pcAO aes2. | %10
ees'4 des c bes bes ees | ees2.~ees2 r4 | %12
aes, aes aes aes aes aes | aes2. aes | %14
aes4 g aes aes aes g | %15
aes2.~aes2 r4 \pcAp | %16
aes g f aes g f \pcAu | bes2. bes | %18
aes4 aes aes des des des | %19
g, bes aes g2 r4 \pcAO | %20
aes des c \pcAO aes des c | aes2. aes | %22
aes4 aes aes aes aes g aes2.~aes2 r4
}
BBGEFxCCMusicLHB = \relative c{ \BBGEFxCCMusicGlobal \clef "bass"
    aes4 aes aes aes aes aes | aes2. aes | %2
des4 des des des des des | %3
aes2.~aes2 r4 | aes aes aes aes aes aes | %5
aes2. aes | bes4 bes bes bes (bes) bes | %7
ees2.~ees2 r4 | ees ees ees ees ees ees | %9
ees2. aes | aes4 aes aes ees ees ees | %11
ees2.~ees2 r4 | %12
aes, aes aes aes aes aes | c2. des | %14
ees4 ees ees \fpre ees \fpostbelow ees ees | %15
aes,2.~aes2 r4 | aes' g f aes g f | %17
c2. c | f4 f f des des des | c2.~c2 r4 | %20
aes' aes aes aes aes aes | c,2. des | %22
ees4 ees ees ees ees ees aes,2.~aes2 r4
}
BBGEFxCCMusicLH =  \partcombine #'(2 . 20)  \BBGEFxCCMusicLHA \BBGEFxCCMusicLHB
BBGEFxCCMusicLyrics = \relative c''''{ \BBGEFxCCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c2. c2. c4 c4 c4 c4 c4 c4 c2. s2 s4 c4 c4 c4 c4 c4 c4 c2. c2. c4 c4 c4 c4 c4 c4 c2. s2 s4 c4 c4 c4 c4 c4 c4 c2. c2. c4 c4 c4 c4 c4 c4 c2 s2. s4 c4 c4 c4 c4 c4 c4 c2. c4  s2 c4 c4 c4 c4 c4 c4 c2. s2 s4 c4 c4 c4 c4 c4 c4 c2  s4 c4  s2 c4 c4 c4 c4 c4 c4 c2. s2 s4 c4 c4 c4 c4 c4 c4 c2  s4 c4  s2 c4 c4 c4 c4 c4 c4 c2.
}

