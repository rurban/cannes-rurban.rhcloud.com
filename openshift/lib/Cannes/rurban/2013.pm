package Cannes::rurban::2013;

#!/usr/bin/perl -- -*- perl -*-
# Cannes 2013 Critics Ratings
# collected by Diego Lerer, ioncinema, indiewire, screendaily and Reini Urban
# Recalc and sort ratings by all cannes critics http://www.todaslascriticas.com.ar/cannes
# and 16 more western critics from http://www.ioncinema.com/ (scaled to 0-10)
# french: http://www.lefilmfrancais.com/cannes2013/quotidien/ (scale 0-4)
# http://jury.critic.de/cannes/
# http://www.screendaily.com/festivals/cannes/cannes-2013-screens-dailies/5056024.article (scale 0-4)
# us: http://www.indiewire.com/article/cannes-2012-a-guide-to-all-the-films
# http://www.indiewire.com/critic/
# http://www.guardian.co.uk/film/series/first-look-review+cannes-2013
# Published at http://cannes-rurban.rhcloud.com/2013
# History at https://github.com/rurban/cannes-critics-ratings
# Perl script by Reini Urban (c) 2010, 2011, 2012, 2013
# US ratings:
# A+ 10   A 9   A- 8
# B+ 7    B 6   B- 5
# C+ 4    C 3   C- 2
# D+ 1.5  D 1
# E 0.5   F 0
# Le film français+Screen Daily 0-4: 0-1, 1-2.5, 2-5, 3-7.5, 4-9
# British 0-5: x2
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1

use utf8;
our $DATA= <<'EOF';

"HELI" (Amat ESCALANTE) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409854/year/2013.html
Roger Koza           6
Diego Batlle         4.5
Diego Lerer          6
Alex Vicente         4
Jose Luis De Lorenzo 1
Cecilia Martinez     4
Fernando Ganzo       
Eulàlia Iglesias     6
Ángel Quintana       6
José Luis Losa       7.5
Pedro Butcher        4
Kieron Corless       
Luciano Barisone     7
Carlo Chatrian       
Violeta Kovacsics    3
Luciano Monteagudo   4
Jaime Pena           4
Rüdiger Suchsland    7.5
Carlos F. Heredero   5.5
Robert Koehler       4
Dana Linssen         7
Cristina Nord        4.5
Francisco Ferreira   
Paolo Moretti        6.5
Neil Young           4.5       http://www.jigsawlounge.co.uk/film/reviews/canas13/
Scott Foundas        
Marcelo Alderete     2.5
Alexandra Zawia      5.5
Boris Nelepo         1
Carlos Reviriego     6.5
Fernando Juan Lima   5
Paolo Bertolin       
Nando Salva          4
Philip Engel        7
Antoine Thirion        
Michal Oleszczyk     7.5
Pablo O. Scholz      4.5
Alejandro G. Calvo   4
Xavi Serra           5.5
Guido Castillo       5
Ronald Rovers        7.5
Javier H. Estrada    4.5
Rose Kuo             
Pamela Bienzobas     5
Alvaro Arroba        
Fredy Friedlander     
# criticwire
Kevin Jagernauth     5        http://blogs.indiewire.com/theplaylist/cannes-review-heli-a-beautifully-shot-but-despairing-look-at-corrupted-lives-20130515
Ryland Aldrich       6        http://www.indiewire.com/film/heli
Craig Skinner        7        http://www.heyuguys.co.uk/cannes-2013-heli-review/
Alex Billington      1.5      http://www.indiewire.com/film/heli
Patrick McGavin      3        http://www.indiewire.com/film/heli
Mike d'Angelo        4.4      http://www.avclub.com/articles/cannes-2013-day-one-sofia-coppola-offers-the-first,97832/
Michael Sennhauser            http://sennhausersfilmblog.ch/2013/05/16/cannes-13-heli-von-amat-escalante/
John Bleasdale       8      http://www.cine-vue.com/2013/05/cannes-film-festival-2013-heli-review.html
Marc van de Klashorst 4      http://icsfilm.org/news/184-cannes-2013-review-heli
Catherine Shoard     8       http://www.guardian.co.uk/film/2013/may/16/heli-cannes-2013-review
# Screen Daily (0-4)
Nick James           5
David Stratton       5
Derek Malcolm        5
Jan Schulz-Ojala     5
Jose Carlos Avellar  7.5
Dennis Lim           5
Michel Ciment        5
Kate Muir/Wendy Ide  7.5
Bo Green Jensen      7.5
Screen International 7.5
Joachim Kurz 	      	     http://www.kino-zeit.de/blog/cannes/heli
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            2.5      
Arnaud Hée           
Christoph Huber      2.5      
Frédéric Jaeger      4       
Till Kadritzke       5       http://www.critic.de/film/heli-5547/
Daniel Kasman        2.5      
Michael Kienzl       6        
# ioncinema 0-5
Nicolas Bell         5
Christophe Beney     7
David Calhoun        8
Per Juul Carlsen     6
#Mike d'Angelo       5
#Carlos F. Heredero   4
Raffi Asdourian      
#Eric Kohn           6
Eric Lavallée        6        C+
Fabien Lemercier     6
Guy Lodge            5
Liu Min              4
Isabelle Regnier     7
Cédric Succivalli    2
Blake Williams       4.7      https://twitter.com/Astrostic/status/334753398048059392
#Neil Young          5
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       2.5
Fabrice Leclerc       
Eric Neuhoff          2.5
Stéphane Delorme      1
Thomas Sotinel        2.5
Philippe Rouyer       1
Pierre Vavasseur      7.5
Pierre Murat          2.5
Jean Roy              2.5
Serge Kaganski        2.5
Pierre Fornerod       5
Pascal Merigeau       5
Danielle Attali       7.5
Christophe Carriére   2.5

"JEUNE & JOLIE (YOUNG & BEAUTIFUL)" (François OZON) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409938/year/2013.html
Roger Koza            5.5
Diego Batlle          6
Diego Lerer           6
Alex Vicente          6
Jose Luis De Lorenzo  7
Cecilia Martinez      8
Fernando Ganzo        3.5
Eulàlia Iglesias      7
Ángel Quintana        7
José Luis Losa        6
Pedro Butcher         6
Kieron Corless        
Luciano Barisone      6
Carlo Chatrian        
Violeta Kovacsics     4
Luciano Monteagudo    5.5
Jaime Pena            5
Rüdiger Suchsland     7
Carlos F. Heredero    5
Robert Koehler        5
Dana Linssen          
Cristina Nord         4
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      4
Alexandra Zawia       6.5
Boris Nelepo          3
Carlos Reviriego      6.5
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           7.5
Philip Engel          7.5
Antoine Thirion         
Michal Oleszczyk      6.5
Pablo O. Scholz       6
Alejandro G. Calvo    5.5
Xavi Serra            6
Guido Castillo        
Ronald Rovers         
Javier H. Estrada     4.5
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba        3.5
Fredy Friedlander    6
Mike d'Angelo        6.6    http://www.avclub.com/articles/cannes-2013-day-one-sofia-coppola-offers-the-first,97832/
Eric Kohn            7      http://www.indiewire.com/article/cannes-sofia-coppolas-the-bling-ring-and-francois-ozons-young-and-beautiful-find-teens-living-dangerously
Kevin Jagernauth     3      http://blogs.indiewire.com/theplaylist/review-being-young-beautiful-isnt-easy-in-francois-ozons-latest-20130516
Michael Sennhauser          http://sennhausersfilmblog.ch/2013/05/16/cannes-13-jeune-et-jolie-von-franois-ozon/
Jo Ann Titmarsh      4.5    http://www.flickeringmyth.com/2013/05/66th-cannes-film-festival-review-jeune.html
John Bleasdale       6      http://www.cine-vue.com/2013/05/cannes-film-festival-2013-jeune-et.html
Peter Bradshaw       6      http://www.guardian.co.uk/film/2013/may/16/cannes-2013-jeune-et-jolie-review
# Screen Daily (0-4)
Nick James           7.5
David Stratton       2.5
Derek Malcolm        5
Jan Schulz-Ojala     5
Jose Carlos Avellar  2.5
Dennis Lim           2.5
Michel Ciment        1
Kate Muir/Wendy Ide  5
Bo Green Jensen      5
Screen International 5
#
Ryland Aldrich       6        http://www.indiewire.com/film/jeune-et-jolie
Craig Skinner        3        http://www.indiewire.com/film/jeune-et-jolie
Clementine Gallot    3        http://www.indiewire.com/film/jeune-et-jolie
Patrick Heidmann     6        http://www.indiewire.com/film/jeune-et-jolie
Joachim Kurz 	      	      http://www.kino-zeit.de/blog/cannes/jeune-jolie
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            
Arnaud Hée           
Christoph Huber      
Frédéric Jaeger      6       http://www.critic.de/film/jeune-et-jolie-5534/
Till Kadritzke       7.5      
Daniel Kasman        
Michael Kienzl       5        
# ioncinema 0-5
Nicolas Bell         6
Christophe Beney     8
David Calhoun        6
Per Juul Carlsen     8
#Mike d'Angelo       7
#Carlos F. Heredero   5
Raffi Asdourian      
#Eric Kohn            
Eric Lavallée        4
Fabien Lemercier     6
Guy Lodge            
Liu Min              8
Isabelle Regnier     6
Cédric Succivalli    8
Blake Williams       5.0      https://twitter.com/Astrostic/status/334947523988951041
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       7.5
Fabrice Leclerc       5
Eric Neuhoff          2.5
Stéphane Delorme      1   
Thomas Sotinel        7.5
Philippe Rouyer       5
Pierre Vavasseur      7.5
Pierre Murat          7.5
Jean Roy              7.5
Serge Kaganski        5
Pierre Fornerod       5
Pascal Merigeau       5
Danielle Attali       2.5
Christophe Carriére   7.5

"TIAN ZHU DING (A TOUCH OF SIN)" (JIA Zhangke) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409320/year/2013.html
Roger Koza            9
Diego Batlle          7.5
Diego Lerer           8.5     http://micropsia.otroscines.com/2013/05/cannes-2013-a-touch-of-sin-de-jia-zhang-ke-competencia/
Alex Vicente          
Jose Luis De Lorenzo  8
Cecilia Martinez      7
Fernando Ganzo        3
Eulàlia Iglesias      6.5
Ángel Quintana        8.5
José Luis Losa        7
Pedro Butcher         8.5
Kieron Corless        7.5
Luciano Barisone      8
Carlo Chatrian        5
Violeta Kovacsics     7
Luciano Monteagudo    6
Jaime Pena            9
Rüdiger Suchsland    
Carlos F. Heredero    7.5
Robert Koehler        10
Dana Linssen          8
Cristina Nord         8
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      5
Alexandra Zawia       8.5
Boris Nelepo          6
Carlos Reviriego      7.5
Fernando Juan Lima    10
Paolo Bertolin        
Nando Salva           6.5
Philip Engel          7.5
Antoine Thirion         
Michal Oleszczyk      8.5
Pablo O. Scholz       5
Alejandro G. Calvo    4
Xavi Serra            7.5
Guido Castillo        8.5
Ronald Rovers         6.5
Javier H. Estrada     8.5
Rose Kuo              
Pamela Bienzobas      8
Alvaro Arroba         4
Fredy Friedlander     8
Mike d'Angelo        5.9      http://www.avclub.com/articles/cannes-2013-day-two-iranian-director-asghar-farhad,97892/
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            5       
Arnaud Hée           
Christoph Huber      9       
Frédéric Jaeger      7.5     
Till Kadritzke       
Daniel Kasman        7.5     
Michael Kienzl       7.5     http://www.critic.de/film/a-touch-of-sin-5598/
# Screen Daily (0-4)
Nick James           7.5
David Stratton       5
Derek Malcolm        7.5
Jan Schulz-Ojala     7.5
Jose Carlos Avellar  7.5
Dennis Lim           9
Michel Ciment        9
Kate Muir/Wendy Ide  7.5
Bo Green Jensen      5
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         7
Christophe Beney     8
David Calhoun        7
Per Juul Carlsen     2
#Mike d'Angelo       6
#Carlos F. Heredero   8
Raffi Asdourian                
#Eric Kohn            
Eric Lavallée        8
Fabien Lemercier     6
Guy Lodge            5
Liu Min              6
Isabelle Regnier     
Cédric Succivalli    8
Blake Williams       6.8      https://twitter.com/Astrostic/status/335075092650393600
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      9
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          2.5
Stéphane Delorme      7.5   
Thomas Sotinel        5
Philippe Rouyer       9
Pierre Vavasseur      9
Pierre Murat          7.5
Jean Roy              5
Serge Kaganski        9
Pierre Fornerod       2.5
Pascal Merigeau       7.5
Danielle Attali       7.5
Christophe Carriére   5
#
Glenn Heath Jr       8        http://www.indiewire.com/film/a-touch-of-sin
Patrick McGavin      9        http://www.indiewire.com/film/a-touch-of-sin
Jessica Kiang        3        http://www.indiewire.com/film/a-touch-of-sin
Beatrice Behn        6        http://www.indiewire.com/film/a-touch-of-sin
Clementine Gallot    6        http://www.indiewire.com/film/a-touch-of-sin
Justin Chang                  http://variety.com/2013/film/reviews/cannes-film-review-a-touch-of-sin-1200482687/
Jon Frosch           8        http://www.indiewire.com/film/a-touch-of-sin
Peter Bradshaw       8        http://www.guardian.co.uk/film/2013/may/17/cannes-touch-of-sin-review
John Bleasdale        6       http://www.cine-vue.com/2013/05/cannes-film-festival-2013-touch-of-sin.html
Eugene Hernandez              http://www.filmlinc.com/daily/entry/cannes-daily-buzz-podcast-jia-zhang-ke-a-touch-of-sin

"LE PASSÉ (THE PAST)" (Asghar FARHADI) [Competition] Ecumenical jury prize
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11407556/year/2013.html
Mike d'Angelo         8.2     http://www.avclub.com/articles/cannes-2013-day-two-iranian-director-asghar-farhad,97892/
Roger Koza            
Diego Batlle          6.5
Diego Lerer           6.5
Alex Vicente          5
Jose Luis De Lorenzo  4
Cecilia Martinez      3
Fernando Ganzo        
Eulàlia Iglesias     6.5
Ángel Quintana       4.5
José Luis Losa       5
Pedro Butcher         1
Kieron Corless        2
Luciano Barisone      6
Carlo Chatrian        6
Violeta Kovacsics     5.5
Luciano Monteagudo    6
Jaime Pena            4.5
Rüdiger Suchsland    8
Carlos F. Heredero    6
Robert Koehler        5
Dana Linssen          5
Cristina Nord         7
Francisco Ferreira    
Paolo Moretti         4
Neil Young            
Scott Foundas         
Marcelo Alderete      1.5
Alexandra Zawia       6
Boris Nelepo          
Carlos Reviriego      6
Fernando Juan Lima    4.5
Paolo Bertolin        
Nando Salva           8
Philip Engel          6.5
Antoine Thirion         
Michal Oleszczyk      
Pablo O. Scholz       6.5
Alejandro G. Calvo    4.5
Xavi Serra            6.5
Guido Castillo        7
Ronald Rovers         7.5
Javier H. Estrada     4.5
Rose Kuo              
Pamela Bienzobas      8
Alvaro Arroba         2.5
Fredy Friedlander     5
Eric Kohn             8       http://www.indiewire.com/article/cannes-how-asgar-farhadis-the-past-confirms-his-mastery-of-human-behavior
Lee Marshall                  http://www.screendaily.com/reviews/the-latest/the-past/5056283.article?blocktitle=Latest-Reviews&contentID=592
Kevin Jagernauth      6       http://blogs.indiewire.com/theplaylist/cannes-review-the-past-a-mostly-powerful-look-at-the-messiness-of-stasis-20130517
Ryland Aldrich        8       http://www.indiewire.com/film/the-past
Beatrice Behn         8       http://www.indiewire.com/film/the-past
Clementine Gallot     8       http://www.indiewire.com/film/the-past
Patrick Heidmann      5       http://www.indiewire.com/film/the-past
Raffi Asdourian       7       http://thefilmstage.com/reviews/cannes-review-the-past/
Joachim Kurz 	      	      http://www.kino-zeit.de/blog/cannes/le-passe
Justin Chang                  http://variety.com/2013/film/reviews/cannes-film-review-the-past-1200482880/
Peter Bradshaw        8       http://www.guardian.co.uk/film/2013/may/17/cannes-2013-the-past-review
John Bleasdale        8        http://www.cine-vue.com/2013/05/cannes-film-festival-2013-past-review.html
#
Adam Cook             5       
Arnaud Hée            5
Christoph Huber       
Frédéric Jaeger       9       
Till Kadritzke        6       
Daniel Kasman         5       
Michael Kienzl        7.5     http://www.critic.de/film/the-past-5535/
# Screen Daily (0-4)
Nick James           5
David Stratton       7.5
Derek Malcolm        7.5
Jan Schulz-Ojala     9
Jose Carlos Avellar  5
Dennis Lim           2.5
Michel Ciment        7.5
Kate Muir/Wendy Ide  9
Bo Green Jensen      7.5
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         6
Christophe Beney     
David Calhoun        5
Per Juul Carlsen     10
#Mike d'Angelo       9
#Carlos F. Heredero   6
Raffi Asdourian      7
#Eric Kohn            
Eric Lavallée        6        http://www.indiewire.com/film/the-past
Fabien Lemercier     9
Guy Lodge            5
Liu Min              9
Isabelle Regnier     
Cédric Succivalli    10
Blake Williams       3.8      https://twitter.com/Astrostic/status/335316528817922048
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      9
Arnaud Schwartz       7.5
Fabrice Leclerc       9
Eric Neuhoff          2.5
Stéphane Delorme      1
Thomas Sotinel        2.5
Philippe Rouyer       7.5
Pierre Vavasseur      9
Pierre Murat          9
Jean Roy              7.5
Serge Kaganski        7.5
Pierre Fornerod       7.5
Pascal Merigeau       9
Danielle Attali       7.5
Christophe Carriére   9
Geoff Andrews (Sight&Sound, UK)   http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2013-tough-acts-follow

"JIMMY P. (PSYCHOTHERAPY OF A PLAINS INDIAN)" (Arnaud DESPLECHIN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409900/year/2013.html
Mike d'Angelo        3.5      http://www.avclub.com/articles/cannes-2013-day-three,97927/
Roger Koza            7
Diego Batlle          7
Diego Lerer           7
Alex Vicente          7
Jose Luis De Lorenzo  4
Cecilia Martinez      5
Fernando Ganzo        4
Eulàlia Iglesias     8
Ángel Quintana       9
José Luis Losa       8
Pedro Butcher         6.5
Kieron Corless        4
Luciano Barisone      
Carlo Chatrian        6.5
Violeta Kovacsics     8
Luciano Monteagudo    6
Jaime Pena            8.5
Rüdiger Suchsland    
Carlos F. Heredero    9
Robert Koehler        7
Dana Linssen          5.5
Cristina Nord         8
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      6.5
Alexandra Zawia       5
Boris Nelepo          6.5
Carlos Reviriego      7
Fernando Juan Lima    4.5
Paolo Bertolin        
Nando Salva           5.5
Philip Engel          7
Antoine Thirion       7.5     http://www.independencia.fr/revue/spip.php?article768
Michal Oleszczyk      
Pablo O. Scholz       6.5
Alejandro G. Calvo    5
Xavi Serra            5
Guido Castillo        5
Ronald Rovers         1
Javier H. Estrada     8
Rose Kuo              
Pamela Bienzobas      7.5
Alvaro Arroba         4
Fredy Friedlander     4
Adam Cook            2.5     
Arnaud Hée           5       
Christoph Huber      6       
Frédéric Jaeger      7.5     
Till Kadritzke       7.5     http://www.critic.de/film/jimmy-p-psychotherapy-of-a-plains-indian-5546/
Daniel Kasman        5       
Michael Kienzl       
# Screen Daily (0-4)
Nick James           5
David Stratton       5
Derek Malcolm        5
Jan Schulz-Ojala     2.5
Jose Carlos Avellar  5
Dennis Lim           
Michel Ciment        7.5
Kate Muir/Wendy Ide  2.5
Bo Green Jensen      7.5
Screen International 5
# ioncinema 0-5
Nicolas Bell         2
Christophe Beney     6
David Calhoun        5
Per Juul Carlsen     4
#Mike d'Angelo       4
#Carlos F. Heredero   8
Raffi Asdourian      4         
#Eric Kohn           2 
Eric Lavallée        4
Fabien Lemercier     6
Guy Lodge            4
Liu Min              
Isabelle Regnier     7
Cédric Succivalli    8
Blake Williams       3.0        https://twitter.com/Astrostic/status/335675274500923392
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       7.5
Fabrice Leclerc       2.5
Eric Neuhoff          7.5
Stéphane Delorme      5   
Thomas Sotinel        2.5
Philippe Rouyer       7.5
Pierre Vavasseur      5
Pierre Murat          9
Jean Roy              7.5
Serge Kaganski        5
Pierre Fornerod       2.5
Pascal Merigeau       7.5
Danielle Attali       7.5
Christophe Carriére   2.5
#
Patrick Heidmann     4      http://www.indiewire.com/film/jimmy-picard
Clementine Gallot    8      http://www.indiewire.com/film/jimmy-picard
Jon Frosch           4      http://www.indiewire.com/film/jimmy-picard
Patrick McGavin      7      http://www.indiewire.com/film/jimmy-picard
Ryland Aldrich       6      http://www.indiewire.com/film/jimmy-picard
Kevin Jagernauth     3      http://www.indiewire.com/film/jimmy-picard
Emanuel Levy         6      http://www.indiewire.com/film/jimmy-picard
Patrick Heidmann     5      http://www.indiewire.com/film/jimmy-picard
John Bleasdale       4      http://www.cine-vue.com/2013/05/cannes-film-festival-2013-jimmy-p.html
Catherine Shoard     2      http://www.guardian.co.uk/film/2013/may/18/cannes-2013-jimmy-p-review

"SOSHITE CHICHI NI NARU (Like Father, Like Son)" (KORE-EDA Hirokazu) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11406706/year/2013.html
Mike d'Angelo        4.2      http://www.avclub.com/articles/cannes-2013-day-three,97927/
Roger Koza            5.5
Diego Batlle          7
Diego Lerer           5
Alex Vicente          
Jose Luis De Lorenzo  9
Cecilia Martinez      9
Fernando Ganzo        
Eulàlia Iglesias     4
Ángel Quintana       5
José Luis Losa       3.5
Pedro Butcher         8
Kieron Corless        4.5
Luciano Barisone      6
Carlo Chatrian        7.5
Violeta Kovacsics     8
Luciano Monteagudo    6
Jaime Pena            5.5
Rüdiger Suchsland    8
Carlos F. Heredero    6.5
Robert Koehler        5
Dana Linssen          7.5
Cristina Nord         7.5
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      5
Alexandra Zawia       5
Boris Nelepo          4
Carlos Reviriego      7.5
Fernando Juan Lima    7
Paolo Bertolin        
Nando Salva           
Philip Engel          8
Antoine Thirion       6.5     http://www.independencia.fr/revue/spip.php?article768
Michal Oleszczyk      
Pablo O. Scholz       7.5
Alejandro G. Calvo    6.5
Xavi Serra            7.5
Guido Castillo        8
Ronald Rovers         
Javier H. Estrada     4
Rose Kuo              
Pamela Bienzobas      6.5
Alvaro Arroba         
Fredy Friedlander     7
#
Adam Cook            5        
Arnaud Hée           6        
Christoph Huber      6        
Frédéric Jaeger      7.5      
Till Kadritzke       7.5      
Daniel Kasman        6        http://mubi.com/notebook/posts/cannes-2013-passing-shots-farhadis-the-past-kore-edas-like-father-like-son-kashyaps-ugly-jodorowskys-la-danza-de-la-realidad
Michael Kienzl       6        http://www.critic.de/film/like-father-like-son-5550/
# Screen Daily (0-4)
Nick James           7.5
David Stratton       5
Derek Malcolm        7.5
Jan Schulz-Ojala     5
Jose Carlos Avellar  7.5
Dennis Lim           7.5
Michel Ciment        5
Kate Muir/Wendy Ide  5
Bo Green Jensen      5
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         7
Christophe Beney     4
David Calhoun        7
Per Juul Carlsen     8
#Mike d'Angelo       5
#Carlos F. Heredero   6
Raffi Asdourian      6
#Eric Kohn            
Eric Lavallée        
Fabien Lemercier     6
Guy Lodge            5
Liu Min              7
Isabelle Regnier     4
Cédric Succivalli    6
Blake Williams       5.6      https://twitter.com/Astrostic/status/335521334270492674
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       7.5
Fabrice Leclerc       7.5
Eric Neuhoff          7.5
Stéphane Delorme      5
Thomas Sotinel        5
Philippe Rouyer       5
Pierre Vavasseur      5
Pierre Murat          1
Jean Roy              5
Serge Kaganski        7.5
Pierre Fornerod       2.5
Pascal Merigeau       2.5
Danielle Attali       9
Christophe Carriére   7.5
#criticwire
Clementine Gallot    8        http://www.indiewire.com/film/like-father-like-son
Jon Frosch           5        http://cannesreport.blogs.france24.com/article/2013/05/18/cannes-benicio-del-toro-jimmy-p-harvey-weinstein-mathieu-amalric-0
Patrick McGavin      5        http://www.indiewire.com/film/like-father-like-son
Ryland Aldrich       7        http://www.indiewire.com/film/like-father-like-son
Kevin Jagernauth     8        http://blogs.indiewire.com/theplaylist/cannes-review-like-father-like-son-a-tender-loving-portrait-of-parenthood-20130518
John Bleasdale       8        http://www.cine-vue.com/2013/05/cannes-film-festival-2013-like-father.html
Peter Bradshaw       6        http://www.guardian.co.uk/film/2013/may/18/cannes-2013-like-father-like-son-review

"BORGMAN" (Alex VAN WARMERDAM) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409861/year/2013.html
Mike d'Angelo        5.2      https://twitter.com/gemko/status/336075606947155969
Roger Koza            
Diego Batlle          
Diego Lerer           
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        
Eulàlia Iglesias     3
Ángel Quintana       4
José Luis Losa       2.5
Pedro Butcher         
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     3.5
Luciano Monteagudo    
Jaime Pena            4
Rüdiger Suchsland    
Carlos F. Heredero    4
Robert Koehler        
Dana Linssen          7.5
Cristina Nord         1.5
Francisco Ferreira    
Paolo Moretti         6
Neil Young            7
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       
Boris Nelepo          
Carlos Reviriego      2.5
Fernando Juan Lima    7
Paolo Bertolin        
Nando Salva           4
Philip Engel          2
Antoine Thirion         
Michal Oleszczyk      
Pablo O. Scholz       6
Alejandro G. Calvo    3
Xavi Serra            5.5
Guido Castillo        7
Ronald Rovers         6.5
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         
Fredy Friedlander     4
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            5        http://mubi.com/notebook/posts/cannes-2013-passing-shots-satyajit-ray-joel-ethan-coen-alex-van-warmerdam
Arnaud Hée           
Christoph Huber      
Frédéric Jaeger      7.5      
Till Kadritzke       9        http://www.critic.de/film/borgman-5554/
Daniel Kasman        
Michael Kienzl       6         
# Screen Daily (0-4)
Nick James           5
David Stratton       5
Derek Malcolm        5
Jan Schulz-Ojala     5
Jose Carlos Avellar  1
Dennis Lim           
Michel Ciment        7.5
Kate Muir/Wendy Ide  5
Bo Green Jensen      7.5
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         6
Christophe Beney     2
David Calhoun        
Per Juul Carlsen     4
#Mike d'Angelo       5
#Carlos F. Heredero   2
Raffi Asdourian      6
#Eric Kohn           7
Eric Lavallée        5
Fabien Lemercier     5
Guy Lodge            8
Liu Min              8
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       4.9      https://twitter.com/Astrostic/status/336086445989183488
#Neil Young          7
Jessica Kiang         8       http://www.indiewire.com/film/borgman
Ryland Aldrich        7       http://www.indiewire.com/film/borgman
Craig Skinner         3       http://www.indiewire.com/film/borgman
Clementine Gallot    1        http://www.indiewire.com/film/borgman
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       7.5
Fabrice Leclerc       5
Eric Neuhoff          2.5
Stéphane Delorme      5
Thomas Sotinel        2.5
Philippe Rouyer       7.5
Pierre Vavasseur      9
Pierre Murat          2.5
Jean Roy              5
Serge Kaganski        2.5
Pierre Fornerod       2.5
Pascal Merigeau       
Danielle Attali       2.5
Christophe Carriére   7.5
#
Jessica Kiang         8       http://blogs.indiewire.com/theplaylist/cannes-review-borgman-delivers-a-deliciously-dark-twisted-cannes-competition-treat-20130519
Ryland Aldrich        7       http://www.indiewire.com/film/borgman
Clementine Gallot     1.5     http://www.indiewire.com/film/borgman
John Bleasdale        8       http://www.cine-vue.com/2013/05/cannes-film-festival-2013-borgman-review.html
Catherine Shoard (Guardian, UK)   6       http://www.guardian.co.uk/film/2013/may/19/cannes-film-festival-borgman-review

"INSIDE LLEWYN DAVIS" (Ethan COEN, Joel COEN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11405872/year/2013.html
Mike d'Angelo         5.7     https://twitter.com/gemko/status/335841004601085952
Roger Koza            7
Diego Batlle          8
Diego Lerer           8.5
Alex Vicente          7
Jose Luis De Lorenzo  7
Cecilia Martinez      
Fernando Ganzo        7
Eulàlia Iglesias     8
Ángel Quintana       8
José Luis Losa       6
Pedro Butcher         8
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     6
Luciano Monteagudo    6.5
Jaime Pena            8
Rüdiger Suchsland    
Carlos F. Heredero    7
Robert Koehler        5.5
Dana Linssen          
Cristina Nord         8
Francisco Ferreira    
Paolo Moretti         
Neil Young            7.5      http://www.jigsawlounge.co.uk/film/reviews/canas13/
Scott Foundas         10      http://variety.com/2013/film/reviews/cannes-film-review-inside-llewyn-davis-1200482240/#!1/review-mulligantimberlake/
Marcelo Alderete      
Alexandra Zawia       7.5
Boris Nelepo          
Carlos Reviriego      7.5
Fernando Juan Lima    6
Paolo Bertolin        
Nando Salva           9
Philip Engel          7.5
Antoine Thirion         
Michal Oleszczyk      
Pablo O. Scholz       7.5
Alejandro G. Calvo    7.5
Xavi Serra            9
Guido Castillo        8
Ronald Rovers         
Javier H. Estrada     6.5
Rose Kuo              
Pamela Bienzobas      7
Alvaro Arroba         8
Fredy Friedlander     8
# Screen Daily (0-4)
Nick James           9
David Stratton       7.5
Derek Malcolm        7.5
Jan Schulz-Ojala     7.5
Jose Carlos Avellar  5
Dennis Lim           7.5
Michel Ciment        9
Kate Muir/Wendy Ide  9
Bo Green Jensen      7.5
Screen International 9
# ioncinema 0-5
Nicolas Bell         7
Christophe Beney     8
David Calhoun        9
Per Juul Carlsen     8
#Mike d'Angelo       6
#Carlos F. Heredero   7
Raffi Asdourian      7
#Eric Kohn            
Eric Lavallée        7
Fabien Lemercier     5
Guy Lodge            
Liu Min              10
Isabelle Regnier     8
Cédric Succivalli    8
Blake Williams       6.5      https://twitter.com/Astrostic/status/335844938765959168
#Neil Young          7
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       7.5
Fabrice Leclerc       7.5
Eric Neuhoff          7.5
Stéphane Delorme      7.5
Thomas Sotinel        7.5
Philippe Rouyer       9
Pierre Vavasseur      2.5
Pierre Murat          9
Jean Roy              5
Serge Kaganski        7.5
Pierre Fornerod       7.5
Pascal Merigeau       7.5
Danielle Attali       5
Christophe Carriére   9
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            5       
Arnaud Hée           
Christoph Huber      1       
Frédéric Jaeger      9      
Till Kadritzke              
Daniel Kasman
Michael Kienzl
Tim Grierson                http://www.screendaily.com/reviews/the-latest/inside-llewyn-davis/5056390.article?blocktitle=IN-COMPETITION&contentID=40428
# criticwire
Glenn Heath Jr       8      http://www.indiewire.com/film/inside-llewyn-davis
Logan Hill           9      http://www.indiewire.com/film/inside-llewyn-davis
Alex Billington      9      http://www.indiewire.com/film/inside-llewyn-davis
Clementine Gallot    9      http://www.indiewire.com/film/inside-llewyn-davis
Jon Frosch           9      http://www.indiewire.com/film/inside-llewyn-davis
Kevin Jagernauth     9      http://blogs.indiewire.com/theplaylist/cannes-review-inside-llewyn-davis-a-funny-melancholy-look-at-a-wayfaring-stranger-20130518
Eric Kohn            8      http://www.indiewire.com/film/inside-llewyn-davis
Ryland Aldrich       8      http://www.indiewire.com/film/inside-llewyn-davis
Patrick Heidmann     9      http://www.indiewire.com/film/inside-llewyn-davis
Jo Ann Titmarsh      10     http://www.flickeringmyth.com/2013/05/66th-cannes-film-festival-review-inside.html
John Bleasdale       10     http://www.cine-vue.com/2013/05/cannes-film-festival-2013-inside-llewyn.html
Peter Bradshaw       10     http://www.guardian.co.uk/film/2013/may/18/cannes-2013-inside-llewyn-davis-review
Jordan Hoffman       9.5    http://www.film.com/movies/inside-llewyn-davis-review
Todd McCarthy        10     http://www.hollywoodreporter.com/movie/inside-llewyn-davis/review/524956

"WARA NO TATE (Shield of Straw)" (Takashi MIIKE) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11408059/year/2013.html
Mike d'Angelo        6.4    http://www.avclub.com/articles/cannes-2013-day-five-takashi-miike-schlocks-it-up,97957/
Roger Koza            
Diego Batlle          5
Diego Lerer           5
Alex Vicente          
Jose Luis De Lorenzo  6.5
Cecilia Martinez      4
Fernando Ganzo        
Eulàlia Iglesias     4
Ángel Quintana       5
José Luis Losa       5.5
Pedro Butcher         9
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     5
Luciano Monteagudo    6
Jaime Pena            6.5
Rüdiger Suchsland    
Carlos F. Heredero    7
Robert Koehler        
Dana Linssen          
Cristina Nord         7
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      4
Alexandra Zawia       6
Boris Nelepo          
Carlos Reviriego      5
Fernando Juan Lima    6.5
Paolo Bertolin        
Nando Salva           
Philip Engel          2.5
Antoine Thirion               http://www.independencia.fr/revue/spip.php?article773
Michal Oleszczyk      
Pablo O. Scholz       4.5
Alejandro G. Calvo    4
Xavi Serra            5
Guido Castillo        3
Ronald Rovers         
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         
Fredy Friedlander     
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            9       
Arnaud Hée           4       
Christoph Huber      7.5     
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        
Michael Kienzl       6       http://www.critic.de/film/straw-shield-5294/
# Screen Daily (0-4)
Nick James           2.5
David Stratton       5
Derek Malcolm        5
Jan Schulz-Ojala     2.5
Jose Carlos Avellar  1
Dennis Lim           2.5
Michel Ciment        5
Kate Muir/Wendy Ide  2.5
Bo Green Jensen      2.5
Screen International 5
# ioncinema 0-5
Nicolas Bell         4        http://www.ioncinema.com/reviews/shield-of-straw-review
Christophe Beney     4
David Calhoun        
Per Juul Carlsen     2
#Mike d'Angelo       7
#Carlos F. Heredero   6
Raffi Asdourian      3
#Eric Kohn           
Eric Lavallée        
Fabien Lemercier     2
Guy Lodge            4
Liu Min              5
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       5.1       https://twitter.com/Astrostic/status/336402597340667905
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       7.5
Fabrice Leclerc       1
Eric Neuhoff          1
Stéphane Delorme         
Thomas Sotinel        5
Philippe Rouyer       5
Pierre Vavasseur      
Pierre Murat          1
Jean Roy              2.5
Serge Kaganski        5
Pierre Fornerod       5
Pascal Merigeau       2.5
Danielle Attali       1
Christophe Carriére   1
# criticwire
Kevin Jagernauth     1        http://blogs.indiewire.com/theplaylist/cannes-review-takashi-miikes-shield-of-straw-a-tedious-dumb-overstuffed-thriller-20130520
Ryland Aldrich       5        http://www.indiewire.com/film/shield-of-straw
Craig Skinner        6        http://www.indiewire.com/film/shield-of-straw
John Bleasdale       2       http://www.cine-vue.com/2013/05/cannes-film-festival-2013-shield-of.html
Shaun Munro          5       http://www.filmschoolrejects.com/reviews/cannes-2013-review-shield-of-straw.php
Peter Bradshaw       2       http://www.guardian.co.uk/film/2013/may/20/shield-of-straw-cannes-2013-review
Mahnola Dargis                http://artsbeat.blogs.nytimes.com/2013/05/22/cannes-film-festival-miikes-honest-cop-winding-refns-wallpaper/

"UN CHÂTEAU EN ITALIE (A CASTLE IN ITALY)" (Valeria BRUNI TEDESCHI) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409902/year/2013.html
Mike d'Angelo         2.4    https://twitter.com/gemko/status/336812768692957184
Roger Koza            
Diego Batlle          7.5
Diego Lerer           6.5
Alex Vicente          7
Jose Luis De Lorenzo  
Cecilia Martinez      7
Fernando Ganzo        
Eulàlia Iglesias     7
Ángel Quintana       7.5
José Luis Losa       4
Pedro Butcher         6
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        5
Violeta Kovacsics     4.5
Luciano Monteagudo    7
Jaime Pena            7.5
Rüdiger Suchsland     2
Carlos F. Heredero    4.5
Robert Koehler        
Dana Linssen          
Cristina Nord         7.5
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       5
Boris Nelepo          
Carlos Reviriego      5.5
Fernando Juan Lima    7.5
Paolo Bertolin        
Nando Salva           
Philip Engel          7.5
Antoine Thirion       6.5
Eugenio Renzi         6
Michal Oleszczyk      
Pablo O. Scholz       5.5
Alejandro G. Calvo    
Xavi Serra            
Guido Castillo        3
Ronald Rovers         
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         
Fredy Friedlander     6
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook                    
Arnaud Hée           1       
Christoph Huber              
Frédéric Jaeger      6       http://www.critic.de/film/un-chateau-en-italie-5544/
Till Kadritzke       
Daniel Kasman        
Michael Kienzl               
# Screen Daily (0-4)
Nick James           5
David Stratton       
Derek Malcolm        5
Jan Schulz-Ojala     2.5
Jose Carlos Avellar  2.5
Dennis Lim           2.5
Michel Ciment        5
Kate Muir/Wendy Ide  2.5
Bo Green Jensen      5
Screen International 5
# ioncinema 0-5
Nicolas Bell         3
Christophe Beney     
David Calhoun        
Per Juul Carlsen     0
#Mike d'Angelo       3
#Carlos F. Heredero   4
Raffi Asdourian      
#Eric Kohn           
Eric Lavallée        
Fabien Lemercier     5
Guy Lodge            
Liu Min              
Isabelle Regnier     
Cédric Succivalli    8
Blake Williams       4.6        https://twitter.com/Astrostic/status/336879472173264897
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       2.5
Fabrice Leclerc       2.5
Eric Neuhoff          7.5
Stéphane Delorme      1
Thomas Sotinel        2.5
Philippe Rouyer       5
Pierre Vavasseur      7.5
Pierre Murat          5
Jean Roy              2.5
Serge Kaganski        5
Pierre Fornerod       5
Pascal Merigeau       5
Danielle Attali       7.5
Christophe Carriére   2.5
#
Shaun Munro           3       http://www.filmschoolrejects.com/reviews/cannes-2013-review-a-castle-in-italy-is-decent-drama-elevated-by-central-performance.php
Peter Bradshaw        2       http://www.guardian.co.uk/film/2013/may/21/cannes-2013-castle-in-italy-review

"BEHIND THE CANDELABRA (Ma vie avec Liberace)" (Steven SODERBERGH) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11407636/year/2013.html
Mike d'Angelo         5.5     https://twitter.com/gemko/status/336811426758938624
Roger Koza            5.5
Diego Batlle          6.5
Diego Lerer           6.5
Alex Vicente          6
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        
Eulàlia Iglesias     6
Ángel Quintana       6
José Luis Losa       7.5
Pedro Butcher         6.5
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        5
Violeta Kovacsics     6
Luciano Monteagudo    6.5
Jaime Pena            5
Rüdiger Suchsland    
Carlos F. Heredero    5
Robert Koehler        5.5
Dana Linssen          5.5
Cristina Nord         7
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       6
Boris Nelepo          
Carlos Reviriego      6.5
Fernando Juan Lima    5
Paolo Bertolin        
Nando Salva           
Philip Engel          5
Antoine Thirion       
Michal Oleszczyk      
Pablo O. Scholz       7
Alejandro G. Calvo    3.5
Xavi Serra            5.5
Guido Castillo        6
Ronald Rovers         
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      6
Alvaro Arroba         
Fredy Friedlander     6
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            7.5     
Arnaud Hée           
Christoph Huber      6       
Frédéric Jaeger      6       http://www.critic.de/film/behind-the-candelabra-5501/
Till Kadritzke       
Daniel Kasman        6
Michael Kienzl       6               
# Screen Daily (0-4)
Nick James           5
David Stratton       5
Derek Malcolm        7.5
Jan Schulz-Ojala     5
Jose Carlos Avellar  5
Dennis Lim           5
Michel Ciment        9
Kate Muir/Wendy Ide  7.5
Bo Green Jensen      5
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         6        http://www.ioncinema.com/reviews/behind-the-candelabra-review
Christophe Beney     6
David Calhoun        8
Per Juul Carlsen     4
#Mike d'Angelo       6
#Carlos F. Heredero   0
Raffi Asdourian      5
#Eric Kohn           
Eric Lavallée        
Fabien Lemercier     6
Guy Lodge            9
Liu Min              9
Isabelle Regnier     5
Cédric Succivalli    
Blake Williams       6.3      https://twitter.com/Astrostic/status/336767669632122880
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       5
Fabrice Leclerc       9
Eric Neuhoff          7.5
Stéphane Delorme      
Thomas Sotinel        5
Philippe Rouyer       5
Pierre Vavasseur      7.5
Pierre Murat          2.5
Jean Roy              7.5
Serge Kaganski        7.5
Pierre Fornerod       5
Pascal Merigeau       5
Danielle Attali       7.5
Christophe Carriére   7.5
# criticwire
Anne Thompson        9    http://www.indiewire.com/film/behind-the-candelabra
Raffi Asdourian      5    http://www.indiewire.com/film/behind-the-candelabra
Alex Billington      7    http://www.indiewire.com/film/behind-the-candelabra
Kevin Jagernauth     7    http://www.indiewire.com/film/behind-the-candelabra
Jon Frosch           7    http://www.theatlantic.com/entertainment/archive/2013/05/steven-soderberghs-too-gay-liberace-movie-has-arrived-at-cannes/276095/
Caryn James          9    http://blogs.indiewire.com/carynjames/liberace
Craig Skinner        9    http://http//www.heyuguys.co.uk/cannes-2013-behind-the-candelabra-review/
Ryland Aldrich       6    http://twitchfilm.com/2013/05/cannes-2013-review-behind-the-candelabra.html
Kirk Honeycott       8    http://honeycuttshollywood.com/behind-candelabra-review/
Shaun Munro          7    http://www.filmschoolrejects.com/reviews/cannes-2013-review-behind-the-candelabra.php
Peter Bradshaw       8    http://www.guardian.co.uk/film/2013/may/21/behind-the-candelabra-review-steven-soderbergh
Manohla Dargis            http://artsbeat.blogs.nytimes.com/2013/05/21/cannes-film-festival-a-sympathetic-tale-of-marriage-and-celebrity/
# metacritic
Richard Corliss      10   http://entertainment.time.com/2013/05/21/soderberghs-behind-the-candelabra-michael-douglas-is-liberace/
Peter Debruge        7    http://variety.com/2013/film/reviews/cannes-film-review-behind-the-candelabra-1200482161/

"LA GRANDE BELLEZZA (THE GREAT BEAUTY)" (Paolo SORRENTINO) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409775/year/2013.html
Mike d'Angelo         5.8     https://twitter.com/gemko/status/336597342511849473
Roger Koza            
Diego Batlle          5
Diego Lerer           7
Alex Vicente          5
Jose Luis De Lorenzo  9
Cecilia Martinez      6
Fernando Ganzo        
Eulàlia Iglesias     7.5
Ángel Quintana       3
José Luis Losa       4
Pedro Butcher         
Kieron Corless        3.5
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     3
Luciano Monteagudo    5
Jaime Pena            4
Rüdiger Suchsland    
Carlos F. Heredero    0.5
Robert Koehler        
Dana Linssen          
Cristina Nord         
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      6.5
Alexandra Zawia       7
Boris Nelepo          1.5
Carlos Reviriego      8
Fernando Juan Lima    10
Paolo Bertolin        
Nando Salva           8.5
Philip Engel          9.5
Antoine Thirion         
Michal Oleszczyk      
Pablo O. Scholz       5
Alejandro G. Calvo    7.5
Xavi Serra            
Guido Castillo        8
Ronald Rovers         9
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         5.5
Fredy Friedlander     8
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            
Arnaud Hée           1       
Christoph Huber              
Frédéric Jaeger      2.5     
Till Kadritzke       2.5     http://www.critic.de/film/la-grande-bellezza-5457/
Daniel Kasman        
Michael Kienzl       
# Screen Daily (0-4)
Nick James           7.5
David Stratton       2.5
Derek Malcolm        9
Jan Schulz-Ojala     7.5
Jose Carlos Avellar  7.5
Dennis Lim           
Michel Ciment        2.5
Kate Muir/Wendy Ide  7.5
Bo Green Jensen      9
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         9
Christophe Beney     
David Calhoun        9
Per Juul Carlsen     8
#Mike d'Angelo       6
#Carlos F. Heredero   0
Raffi Asdourian      6
#Eric Kohn           
Eric Lavallée        5
Fabien Lemercier     8
Guy Lodge            5
Liu Min              8
Isabelle Regnier     
Cédric Succivalli    5
Blake Williams       5.8        https://twitter.com/Astrostic/status/336611793810124801
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       9
Fabrice Leclerc       2.5
Eric Neuhoff          5
Stéphane Delorme      1
Thomas Sotinel        2.5
Philippe Rouyer       5
Pierre Vavasseur      9
Pierre Murat          9
Jean Roy              5
Serge Kaganski        
Pierre Fornerod       7.5
Pascal Merigeau       2.5
Danielle Attali       5
Christophe Carriére   7.5
#criticwire
Ryland Aldrich       7       http://www.indiewire.com/film/the-great-beauty
Shaun Munro          6       http://www.filmschoolrejects.com/reviews/cannes-2013-review-the-great-beauty-is-a-sight-for-sore-eyes.php
Peter Bradshaw       8       http://www.guardian.co.uk/film/2013/may/21/cannes-review-great-beauty-sorrentino
Mahnola Dargis                http://www.nytimes.com/2013/05/24/movies/many-films-still-in-running-at-cannes-for-palme-dor.html?pagewanted=2&_r=0

"ONLY GOD FORGIVES" (Nicolas WINDING REFN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11408165/year/2013.html
Mike d'Angelo         1.7     https://twitter.com/gemko/status/337169804937023488
Roger Koza            
Diego Batlle          5.5
Diego Lerer           4
Alex Vicente          
Jose Luis De Lorenzo  6
Cecilia Martinez      2
Fernando Ganzo        3.5
Eulàlia Iglesias     8.5
Ángel Quintana       6
José Luis Losa       5
Pedro Butcher         3
Kieron Corless        3
Luciano Barisone      
Carlo Chatrian        2
Violeta Kovacsics     7
Luciano Monteagudo    6
Jaime Pena            6
Rüdiger Suchsland    3.5
Carlos F. Heredero    6
Robert Koehler        
Dana Linssen          
Cristina Nord         5.5
Francisco Ferreira    
Paolo Moretti         
Neil Young            4
Scott Foundas         
Marcelo Alderete      1.5
Alexandra Zawia       3
Boris Nelepo          
Carlos Reviriego      7.5
Fernando Juan Lima    3
Paolo Bertolin        
Nando Salva           
Philip Engel          7
Antoine Thirion       4       http://www.independencia.fr/revue/spip.php?article773
Michal Oleszczyk      
Pablo O. Scholz       4
Alejandro G. Calvo    7.5
Xavi Serra            7
Guido Castillo        5
Ronald Rovers         8
Javier H. Estrada     8
Rose Kuo              
Pamela Bienzobas      4
Alvaro Arroba         5
Fredy Friedlander     
# Screen Daily (0-4)
Nick James           2.5
David Stratton       1
Derek Malcolm        2.5
Jan Schulz-Ojala     2.5
Jose Carlos Avellar  1
Dennis Lim           2.5
Michel Ciment        7.5
Kate Muir/Wendy Ide  5
Bo Green Jensen      7.5
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         6
Christophe Beney     8
David Calhoun        2
Per Juul Carlsen     6
#Mike d'Angelo       2
#Carlos F. Heredero   
Raffi Asdourian      5
#Eric Kohn           3
Eric Lavallée        6
Fabien Lemercier     7
Guy Lodge            5
Liu Min              2
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       1
Fabrice Leclerc       2.5
Eric Neuhoff          1
Stéphane Delorme      5
Thomas Sotinel        5
Philippe Rouyer       7.5
Pierre Vavasseur      1
Pierre Murat          7.5
Jean Roy              2.5
Serge Kaganski        7.5
Pierre Fornerod       1
Pascal Merigeau       2.5
Danielle Attali       2.5
Christophe Carriére   7.5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            1        http://mubi.com/notebook/posts/cannes-2013-hollow-cinema-nicolas-winding-refns-only-god-forgives
Arnaud Hée           4
Christoph Huber      7.5        
Frédéric Jaeger      7.5      http://www.critic.de/film/only-god-forgives-5060/
Till Kadritzke       1
Daniel Kasman        1
Michael Kienzl       5
# criticwire
Glenn Heath Jr        3       http://www.indiewire.com/film/only-god-forgives
Craig Skinner         1       http://www.indiewire.com/film/only-god-forgives
Raffi Asdourian       5       http://www.indiewire.com/film/only-god-forgives
Jon Frosch            5       http://www.indiewire.com/film/only-god-forgives
Jessica Kiang         6       http://blogs.indiewire.com/theplaylist/cannes-review-only-god-forgives-stretches-refns-neon-noir-style-over-too-little-oedipal-amoral-substance-20130522
Eric Kohn             3       http://www.indiewire.com/article/cannes-how-only-god-forgives-suggests-ryan-goslings-schtick-has-worn-thin
Ryland Aldrich        9       http://www.indiewire.com/film/only-god-forgives
Beatrice Behn                 http://www.kino-zeit.de/blog/cannes/stoerung-und-verstoerung-das-bild-des-mannes-in-nicolas-winding-refns-only-god-forgives
Peter Bradshaw       10       http://www.guardian.co.uk/film/2013/may/22/cannes-only-good-forgives-ryan-gosling-review
Barbara Scharres              http://www.rogerebert.com/cannes/am-i-blue-cannes-report-may-22
Logan Hill                    http://artsbeat.blogs.nytimes.com/2013/05/16/cannes-film-festival-nicolas-winding-refn-on-being-one-with-ryan-gosling/?hpw
Mahnola Dargis                http://artsbeat.blogs.nytimes.com/2013/05/22/cannes-film-festival-miikes-honest-cop-winding-refns-wallpaper/

"GRIGRIS" (Mahamat-Saleh HAROUN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409856/year/2013.html
Mike d'Angelo         4.8     https://twitter.com/gemko/status/336975857224663040
Roger Koza            6.5
Diego Batlle          5.5
Diego Lerer           
Alex Vicente          
Jose Luis De Lorenzo  6
Cecilia Martinez      6.5
Fernando Ganzo        
Eulàlia Iglesias     5
Ángel Quintana       5
José Luis Losa       5
Pedro Butcher         6
Kieron Corless        5
Luciano Barisone      
Carlo Chatrian        5.5
Violeta Kovacsics     
Luciano Monteagudo    
Jaime Pena            5
Rüdiger Suchsland    
Carlos F. Heredero    5
Robert Koehler        8.5
Dana Linssen          7.5
Cristina Nord         7
Francisco Ferreira    
Paolo Moretti         
Neil Young            7
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       7
Boris Nelepo          7
Carlos Reviriego      6
Fernando Juan Lima    
Paolo Bertolin        
Nando Salva           
Philip Engel          
Antoine Thirion       6.5
Michal Oleszczyk      
Pablo O. Scholz       5.5
Alejandro G. Calvo    3.5
Xavi Serra            5
Guido Castillo        5
Ronald Rovers         
Javier H. Estrada     5.5
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         4.5
Fredy Friedlander     
# Screen Daily (0-4)
Nick James           5
David Stratton       5
Derek Malcolm        7.5
Jan Schulz-Ojala     2.5
Jose Carlos Avellar  7.5
Dennis Lim           5
Michel Ciment        5
Kate Muir/Wendy Ide  2.5
Bo Green Jensen      5
Screen International 1
# ioncinema 0-5
Nicolas Bell         4
Christophe Beney     6
David Calhoun        6
Per Juul Carlsen     2
#Mike d'Angelo       5
#Carlos F. Heredero   4
Raffi Asdourian      2
#Eric Kohn           
Eric Lavallée        
Fabien Lemercier     4
Guy Lodge            6
Liu Min              5
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       3.8      https://twitter.com/Astrostic/status/336980366298603522
#Neil Young          7
# Le film français 0-4
Stéphanie Lamome      1 
Arnaud Schwartz       5
Fabrice Leclerc       5
Eric Neuhoff          2.5
Stéphane Delorme      7.5
Thomas Sotinel        2.5
Philippe Rouyer       5
Pierre Vavasseur      5
Pierre Murat          7.5
Jean Roy              2.5
Serge Kaganski        5
Pierre Fornerod       2.5
Pascal Merigeau       5
Danielle Attali       2.5
Christophe Carriére   5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            6
Arnaud Hée           6
Christoph Huber              
Frédéric Jaeger      
Till Kadritzke       4
Daniel Kasman        4
Michael Kienzl       4        http://www.critic.de/film/grigris-5549/
#
Peter Bradshaw       6        http://www.guardian.co.uk/film/2013/may/22/cannes-2013-grigris-review

"NEBRASKA" (Alexander PAYNE) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409873/year/2013.html
Mike d'Angelo         7.1     http://www.avclub.com/articles/cannes-2013-day-eight-from-infatuation-to-disillus,98137/
Roger Koza            
Diego Batlle          7.5
Diego Lerer           7.5
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        
Eulàlia Iglesias     4.5
Ángel Quintana       6
José Luis Losa       6
Pedro Butcher         6.5
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        6.5
Violeta Kovacsics     7.5
Luciano Monteagudo    7
Jaime Pena            7.5
Rüdiger Suchsland    
Carlos F. Heredero    8
Robert Koehler        5
Dana Linssen          
Cristina Nord         6
Francisco Ferreira    
Paolo Moretti         
Neil Young            6
Scott Foundas         
Marcelo Alderete      6
Alexandra Zawia       7.5
Boris Nelepo          
Carlos Reviriego      7.5
Fernando Juan Lima    6
Paolo Bertolin        
Nando Salva           
Philip Engel          6
Antoine Thirion       
Michal Oleszczyk      
Pablo O. Scholz       8
Alejandro G. Calvo    9
Xavi Serra            7
Guido Castillo        7.5
Ronald Rovers         4.5
Javier H. Estrada     5
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         5.5
Fredy Friedlander     6
# Screen Daily (0-4)
Nick James           
David Stratton       9
Derek Malcolm        7.5
Jan Schulz-Ojala     9
Jose Carlos Avellar  7.5
Dennis Lim           5
Michel Ciment        7.5
Kate Muir/Wendy Ide  7.5
Bo Green Jensen      
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         5
Christophe Beney     0
David Calhoun        7
Per Juul Carlsen     6
#Mike d'Angelo       8
#Carlos F. Heredero   6
Raffi Asdourian      7
#Eric Kohn           5
Eric Lavallée        5
Fabien Lemercier     7
Guy Lodge            4
Liu Min              7
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       7        https://twitter.com/Astrostic/status/337486222484193280
#Neil Young          6
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       7.5
Fabrice Leclerc       
Eric Neuhoff          9
Stéphane Delorme      1
Thomas Sotinel        7.5
Philippe Rouyer       5
Pierre Vavasseur      7.5
Pierre Murat          5
Jean Roy              7.5
Serge Kaganski        2.5
Pierre Fornerod       5
Pascal Merigeau       7.5
Danielle Attali       2.5
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            5
Arnaud Hée           
Christoph Huber              
Frédéric Jaeger      2.5
Till Kadritzke       2.5      http://www.critic.de/film/nebraska-5552/
Daniel Kasman        2.5
Michael Kienzl       
# criticwire
Patrick Heidmann      7
Jon Frosch            7
Ryland Aldrich        6       http://www.indiewire.com/film/nebraska
Jessica Kiang         5       http://blogs.indiewire.com/theplaylist/cannes-review-alexander-paynes-nebraska-an-overfamiliar-tale-of-connections-broken-and-remade-20130523
Eric Kohn             5       http://www.indiewire.com/film/nebraska
Clementine Gallot     3       http://www.indiewire.com/film/nebraska
Jon Frosch                    http://cannesreport.blogs.france24.com/article/2013/05/23/cannes-abdellatif-kechiche-lea-seydoux-alexander-payne-will-forte-0
Todd McCarthy        10       http://www.hollywoodreporter.com/movie/nebraska/review/550167
Peter Bradshaw        8       http://www.guardian.co.uk/film/2013/may/23/cannes-2013-nebraska-first-look-review
Mahnola Dargis                http://www.nytimes.com/2013/05/24/movies/many-films-still-in-running-at-cannes-for-palme-dor.html?_r=0
Ben Kenigsberg                http://www.rogerebert.com/cannes/cannes-bruce-dern-and-will-forte-visit-nebrask
Barbara Scharres              http://www.rogerebert.com/cannes/globe-trotting-cannes-report-may-23

"LA VIE D'ADÈLE - CHAPITRE 1 & 2 (BLUE IS THE WARMEST COLOUR)" (Abdellatif KECHICHE) [Competition] FIPRESCI Price Competition
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409897/year/2013.html
Mike d'Angelo         6.9     http://www.avclub.com/articles/cannes-2013-day-eight-from-infatuation-to-disillus,98137/
Roger Koza            9
Diego Batlle          9.5
Diego Lerer           9
Alex Vicente          
Jose Luis De Lorenzo  10
Cecilia Martinez      10
Fernando Ganzo        6
Eulàlia Iglesias     9
Ángel Quintana       9.5
José Luis Losa       10
Pedro Butcher         7
Kieron Corless        8
Luciano Barisone      
Carlo Chatrian        8
Violeta Kovacsics     8.5
Luciano Monteagudo    9
Jaime Pena            10
Rüdiger Suchsland     10
Carlos F. Heredero    9
Robert Koehler        7.5
Dana Linssen          
Cristina Nord         7
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      6
Alexandra Zawia       9.5
Boris Nelepo          6
Carlos Reviriego      8.5
Fernando Juan Lima    10
Paolo Bertolin        
Nando Salva           
Philip Engel          6
Antoine Thirion       8
Michal Oleszczyk      
Pablo O. Scholz       8
Alejandro G. Calvo    9.5
Xavi Serra            9
Guido Castillo        10
Ronald Rovers         9
Javier H. Estrada     7.5
Rose Kuo              
Pamela Bienzobas      8.5
Alvaro Arroba         8
Fredy Friedlander     7
# Screen Daily (0-4)
Nick James           
David Stratton       9
Derek Malcolm        7.5
Jan Schulz-Ojala     7.5
Jose Carlos Avellar  7.5
Dennis Lim           
Michel Ciment        9
Kate Muir/Wendy Ide  9
Bo Green Jensen      9
Screen International 9
# ioncinema 0-5
Nicolas Bell         9
Christophe Beney     10
David Calhoun        9
Per Juul Carlsen     10
#Mike d'Angelo       7
#Carlos F. Heredero   8
Raffi Asdourian      
#Eric Kohn           9
Eric Lavallée        9        http://www.ioncinema.com/news/film-festivals/2013-cannes-critics-panel-day-9-kechiche-blue-is-the-warmest-colour
Fabien Lemercier     9
Guy Lodge            9        http://www.hitfix.com/in-contention/cannes-check-2013-abdellatif-kechiches-blue-is-the-warmest-color
Liu Min              10
Isabelle Regnier     8
Cédric Succivalli    10
Blake Williams       5.7      https://twitter.com/Astrostic/status/337290597113155585
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      9
Arnaud Schwartz       9
Fabrice Leclerc       
Eric Neuhoff          2.5
Stéphane Delorme      7.5
Thomas Sotinel        7.5
Philippe Rouyer       9
Pierre Vavasseur      9
Pierre Murat          9
Jean Roy              9
Serge Kaganski        9
Pierre Fornerod       9
Pascal Merigeau       9
Danielle Attali       9
Christophe Carriére   9
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            
Arnaud Hée           9
Christoph Huber              
Frédéric Jaeger      9
Till Kadritzke       9        http://www.critic.de/film/blue-is-the-warmest-color-5551/
Daniel Kasman        
Michael Kienzl       6
# criticwire
Glenn Heath Jr      8         http://www.indiewire.com/film/la-vie-dadele
Patrick Heidmann    9         http://www.indiewire.com/film/la-vie-dadele
Clementine Gallot   10        http://www.indiewire.com/film/la-vie-dadele
Eric Kohn           8         http://www.indiewire.com/article/cannes-lesbian-coming-of-age-epic-blue-is-the-warmest-color-offers-honest-sexually-frank-insights
Joachim Kurz        10        http://www.kino-zeit.de/blog/cannes/la-vie-d-adele-chapitre-1-2
Jon Frosch          10        http://cannesreport.blogs.france24.com/article/2013/05/23/cannes-abdellatif-kechiche-lea-seydoux-alexander-payne-will-forte-0
Mathilde Cesbron              http://www.lefigaro.fr/festival-de-cannes/2013/05/23/03011-20130523ARTFIG00561-abdellatif-kechiche-la-vie-d-adele-n-est-pas-un-film-militant-homosexuel.php
Maxime Pargaud (Le Figaro, France) 10  http://www.lefigaro.fr/festival-de-cannes/2013/05/23/03011-20130523ARTFIG00465--la-vie-d-adele-un-chef-d-oeuvre-bouleversant.php
Barbara Scharres              http://www.rogerebert.com/cannes/am-i-blue-cannes-report-may-22
Jordan Mintzer (Hollywood Reporter, USA) http://www.hollywoodreporter.com/review/blue-is-warmest-color-cannes-527347
David Hudson                  http://www.fandor.com/blog/daily-cannes-2013-abdellatif-kechiches-blue-is-the-warmest-color
Peter Bradshaw      8         http://www.guardian.co.uk/film/2013/may/23/cannes-2013-blue-warmest-colour-review
Mahnola Dargis                http://www.nytimes.com/2013/05/24/movies/many-films-still-in-running-at-cannes-for-palme-dor.html?pagewanted=2&_r=0
Craig Kennedy                 http://www.awardsdaily.com/blog/cannes-review-la-vie-dadele-blue-is-the-warmest-color/
Ali Naderzad                  http://screencomment.com/2013/05/blue-is-the-warmest-color-la-vie-dadele/
Jonathan Romney (Sight&Sound, UK) http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2013-close-physical

"THE IMMIGRANT" (James GRAY) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409863/year/2013.html
Mike d'Angelo         5.6     https://twitter.com/gemko/status/337879203880001537
Roger Koza            9
Diego Batlle          7.5
Diego Lerer           9
Alex Vicente          
Jose Luis De Lorenzo  5.5
Cecilia Martinez      6.5
Fernando Ganzo        
Eulàlia Iglesias     8
Ángel Quintana       
José Luis Losa       6.5
Pedro Butcher         9
Kieron Corless        3.5
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     8.5
Luciano Monteagudo    6.5
Jaime Pena            6
Rüdiger Suchsland    4
Carlos F. Heredero    7
Robert Koehler        10
Dana Linssen          
Cristina Nord         4
Francisco Ferreira    
Paolo Moretti         
Neil Young            5
Scott Foundas         
Marcelo Alderete      6
Alexandra Zawia       3
Boris Nelepo          9
Carlos Reviriego      7
Fernando Juan Lima    6.5
Paolo Bertolin        
Nando Salva           
Philip Engel          7
Antoine Thirion       8
Michal Oleszczyk      
Pablo O. Scholz       6
Alejandro G. Calvo    7.5
Xavi Serra            6.5
Guido Castillo        
Ronald Rovers         
Javier H. Estrada     6
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         9
Fredy Friedlander     7
# Screen Daily (0-4)
Nick James           
David Stratton       
Derek Malcolm        
Jan Schulz-Ojala     
Jose Carlos Avellar  
Dennis Lim           
Michel Ciment        
Kate Muir/Wendy Ide  
Bo Green Jensen      
Screen International 
# ioncinema 0-5
Nicolas Bell         7
Christophe Beney     
David Calhoun        4
Per Juul Carlsen     0
#Mike d'Angelo       6
#Carlos F. Heredero   6
Raffi Asdourian      6
#Eric Kohn           6
Eric Lavallée        
Fabien Lemercier     3
Guy Lodge            
Liu Min              
Isabelle Regnier     
Cédric Succivalli    5
Blake Williams       
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme        
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            9
Arnaud Hée           6
Christoph Huber      7.5       
Frédéric Jaeger      5        http://www.critic.de/film/the-immigrant-5548/
Till Kadritzke       4
Daniel Kasman        9        http://mubi.com/notebook/posts/cannes-2013-dialogues-james-grays-the-immigrant
Michael Kienzl       6
# criticwire
Jessica Kiang        7        http://blogs.indiewire.com/theplaylist/cannes-review-james-grays-careful-poised-the-immigrant-builds-slowly-to-a-resonant-climax-20130524
Glenn Heath Jr       9        http://www.indiewire.com/film/lowlife
Patrick Heidmann     1        http://www.indiewire.com/film/lowlife
Clementine Gallot    8        http://www.indiewire.com/film/lowlife
Jon Frosch           6        http://www.indiewire.com/film/lowlife

"MICHAEL KOHLHAAS" (Arnaud DES PALLIÈRES) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409909/year/2013.html
Mike d'Angelo         5.4    https://twitter.com/gemko/status/338297770291130368
Roger Koza            7.5
Diego Batlle          6
Diego Lerer           6
Alex Vicente          
Jose Luis De Lorenzo  5.5
Cecilia Martinez      4
Fernando Ganzo        10
Eulàlia Iglesias     6.5
Ángel Quintana       
José Luis Losa       6
Pedro Butcher         4
Kieron Corless        6.5
Luciano Barisone      
Carlo Chatrian        7.5
Violeta Kovacsics     7.5
Luciano Monteagudo    8.5
Jaime Pena            6.5
Rüdiger Suchsland    
Carlos F. Heredero    5.5
Robert Koehler        3
Dana Linssen          
Cristina Nord         8.5
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       6
Boris Nelepo          7
Carlos Reviriego      6.5
Fernando Juan Lima    4.5
Paolo Bertolin        
Nando Salva           
Philip Engel          5.5
Antoine Thirion       
Michal Oleszczyk      
Pablo O. Scholz       6
Alejandro G. Calvo    6.5
Xavi Serra            6
Guido Castillo        5
Ronald Rovers         7.5
Javier H. Estrada     6.5
Rose Kuo              
Pamela Bienzobas      7
Alvaro Arroba         9
Fredy Friedlander     6
# Screen Daily (0-4)
Nick James           
David Stratton       
Derek Malcolm        
Jan Schulz-Ojala     
Jose Carlos Avellar  
Dennis Lim           
Michel Ciment        
Kate Muir/Wendy Ide  
Bo Green Jensen      
Screen International 
# ioncinema 0-5
Nicolas Bell         4
Christophe Beney     
David Calhoun        5
Per Juul Carlsen     6
#Mike d'Angelo       
#Carlos F. Heredero   5
Raffi Asdourian      
#Eric Kohn           
Eric Lavallée        
Fabien Lemercier     5
Guy Lodge            4
Liu Min              
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       5
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme        
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            
Arnaud Hée           6
Christoph Huber      5       
Frédéric Jaeger      6
Till Kadritzke       4        http://www.critic.de/film/michael-kohlhaas-5545/
Daniel Kasman        
Michael Kienzl       
#
Patrick Heidmann      5       http://www.indiewire.com/film/michael-kohlhaas
Clementine Gallot     7       http://www.indiewire.com/film/michael-kohlhaas
Barbara Scharres              http://www.rogerebert.com/cannes/globe-trotting-cannes-report-may-23


"LA VÉNUS À LA FOURRURE (VENUS IN FUR)" (Roman POLANSKI) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409865/year/2013.html
Mike d'Angelo         6.1    https://twitter.com/gemko/status/338207781314240512
Roger Koza            5
Diego Batlle          6.5
Diego Lerer           5
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        
Eulàlia Iglesias     5.5
Ángel Quintana       
José Luis Losa       6.5
Pedro Butcher         
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     6.5
Luciano Monteagudo    6
Jaime Pena            5.5
Rüdiger Suchsland    
Carlos F. Heredero    5
Robert Koehler        4
Dana Linssen          
Cristina Nord         3
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       5.5
Boris Nelepo          
Carlos Reviriego      5.5
Fernando Juan Lima    
Paolo Bertolin        
Nando Salva           
Philip Engel          8
Antoine Thirion       
Michal Oleszczyk      
Pablo O. Scholz       6
Alejandro G. Calvo    
Xavi Serra            
Guido Castillo        
Ronald Rovers         6.5
Javier H. Estrada     5
Rose Kuo              
Pamela Bienzobas      5
Alvaro Arroba         3
Fredy Friedlander     8
# Screen Daily (0-4)
Nick James           
David Stratton       
Derek Malcolm        
Jan Schulz-Ojala     
Jose Carlos Avellar  
Dennis Lim           
Michel Ciment        
Kate Muir/Wendy Ide  
Bo Green Jensen      
Screen International 
# ioncinema 0-5
Nicolas Bell         
Christophe Beney     
David Calhoun        
Per Juul Carlsen     
#Mike d'Angelo       
#Carlos F. Heredero   
Raffi Asdourian      
#Eric Kohn           
Eric Lavallée        
Fabien Lemercier     
Guy Lodge            
Liu Min              
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme        
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            
Arnaud Hée           
Christoph Huber              
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        
Michael Kienzl       
#
Jessica Kiang         3       http://blogs.indiewire.com/theplaylist/emmanuelle-seigner-a-raucous-revelation-in-polanskis-otherwise-stagy-pointless-venus-in-fur-20130525
Patrick Heidmann      7       http://www.indiewire.com/film/venus-in-fur
Clementine Gallot     7       http://www.indiewire.com/film/venus-in-fur

"ONLY LOVERS LEFT ALIVE" (Jim JARMUSCH) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11411996/year/2013.html
Mike d'Angelo         7.7     https://twitter.com/gemko/status/338016031668850688
Roger Koza            8
Diego Batlle          8
Diego Lerer           8
Alex Vicente          
Jose Luis De Lorenzo  8
Cecilia Martinez      7.5
Fernando Ganzo        
Eulàlia Iglesias     5
Ángel Quintana       
José Luis Losa       5
Pedro Butcher         
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     7
Luciano Monteagudo    6
Jaime Pena            8
Rüdiger Suchsland    
Carlos F. Heredero    6
Robert Koehler        6
Dana Linssen          
Cristina Nord         8
Francisco Ferreira    
Paolo Moretti         
Neil Young            7
Scott Foundas         
Marcelo Alderete      9
Alexandra Zawia       8
Boris Nelepo          10
Carlos Reviriego      7.5
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           
Philip Engel          8.5
Antoine Thirion       
Michal Oleszczyk      
Pablo O. Scholz       6
Alejandro G. Calvo    10
Xavi Serra            7.5
Guido Castillo        
Ronald Rovers         6
Javier H. Estrada     6
Rose Kuo              
Pamela Bienzobas      6.5
Alvaro Arroba         10
Fredy Friedlander     6
# Screen Daily (0-4)
Nick James           
David Stratton       
Derek Malcolm        
Jan Schulz-Ojala     
Jose Carlos Avellar  
Dennis Lim           
Michel Ciment        
Kate Muir/Wendy Ide  
Bo Green Jensen      
Screen International 
# ioncinema 0-5
Nicolas Bell         
Christophe Beney     
David Calhoun        
Per Juul Carlsen     
#Mike d'Angelo       
#Carlos F. Heredero   
Raffi Asdourian      
#Eric Kohn           
Eric Lavallée        
Fabien Lemercier     
Guy Lodge            
Liu Min              
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       
#Neil Young          
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme        
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            
Arnaud Hée           
Christoph Huber              
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        
Michael Kienzl       
# criticwire
Patrick Heidmann    8
Eric Kohn           7         http://www.indiewire.com/article/with-only-lovers-left-alive-jim-jarmusch-caps-a-great-year-for-american-auteurs-in-cannes

UN CERTAIN REGARD

"THE BLING RING" (Sofia COPPOLA) [Un Certain Regard]
Mike d'Angelo        3.2   http://www.avclub.com/articles/cannes-2013-day-one-sofia-coppola-offers-the-first,97832/
Kevin Jagernauth     4     http://blogs.indiewire.com/theplaylist/cannes-review-sofia-coppola-the-bling-ring-a-mostly-empty-exercise-in-excess-20130516
Roger Koza           5.5           
Diego Batlle         7.5
Diego Lerer          7
Alex Vicente         6.5
Jose Luis De Lorenzo 6
Cecilia Martinez     6
Fernando Ganzo       5
Eulàlia Iglesias     5.5
Ángel Quintana       5
José Luis Losa       6.5
Pedro Butcher        7
Kieron Corless       
Luciano Barisone     4
Carlo Chatrian       
Violeta Kovacsics    6
Luciano Monteagudo   7
Jaime Pena           6.5
Rüdiger Suchsland    8.5
Carlos Heredero      6
Robert Koehler       
Dana Linssen         5.5
Cristina Nord        5.5
Francisco Ferreira   
Paolo Moretti        
Neil Young           4                http://www.jigsawlounge.co.uk/film/reviews/canas13/
Scott Foundas        
Marcelo Alderete     6.5
Alexandra Zawia      3
Boris Nelepo         5.5
Carlos Reviriego     
Fernando Juan Lima   5.5
Paolo Bertolin       
Nando Salva          6.5
Philip Engel        7.5
Antoine Thirion        
Michal Oleszczyk     2
Pablo O. Scholz      5.5
Alejandro G. Calvo   7
Xavi Serra           5
Guido Castillo       8
Ronald Rovers        7.5
Javier H. Estrada    6.5
Rose Kuo             
Pamela Bienzobas     5
Alvaro Arroba        1.5
Fredy Friedlander     
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       2.5
Fabrice Leclerc       7.5
Eric Neuhoff          2.5
Stéphane Delorme      2.5   
Thomas Sotinel        7.5
Philippe Rouyer       2.5
Pierre Vavasseur      
Pierre Murat          2.5
Jean Roy              
Serge Kaganski        5
Pierre Fornerod       5
Pascal Merigeau       
Danielle Attali       5
Christophe Carriére   
Eric Kohn            6   http://www.indiewire.com/article/cannes-sofia-coppolas-the-bling-ring-and-francois-ozons-young-and-beautiful-find-teens-living-dangerously
Peter Bradshaw       6   http://www.guardian.co.uk/film/2013/may/16/bling-ring-cannes-2013-review
Guy Lodge            7   http://www.hitfix.com/in-contention/review-sofia-coppola-flips-the-celebrity-mirror-in-taut-smart-the-bling-ring
Mark Adams (Screen Daily, USA)               http://www.screendaily.com/reviews/the-latest/the-bling-ring/5056168.article
David Jenkins (Little White Lies blog, UK)   http://www.littlewhitelies.co.uk/features/festivals/cannes-2013-the-bling-ring-review-23895
Kaleem Aftab (The Independent, UK)   8	     http://www.independent.co.uk/arts-entertainment/films/reviews/the-bling-ring-review-emma-watson-leaves-hermoine-behind-in-sofia-coppolas-new-film-8618418.html
Cath Clarke (Time Out London, UK) 8 http://www.timeout.com/london/film/the-bling-ring
Robbie Collin (The Telegraph, UK) 8 http://www.telegraph.co.uk/culture/film/cannes-film-festival/10061235/Cannes-2013-The-Bling-Ring-review.html
Scott Foundas                  http://variety.com/2013/film/reviews/cannes-film-review-the-bling-ring-1200482052/
Graham Fuller (Vanity Fair)    http://www.vanityfair.com/hollywood/2013/06/movie-review-sofia-coppola-bling-ring
Todd McCarthy http://www.hollywoodreporter.com/movie/bling-ring/review/523429
Matt Mueller (Thompson on Hollywood, USA) http://blogs.indiewire.com/thompsononhollywood/cannes-review-coppolas-the-bling-ring
Michael Sennhauser             http://sennhausersfilmblog.ch/2013/05/16/cannes-13-the-bling-ring-von-sofia-coppola/
John Bleasdale        4        http://www.cine-vue.com/2013/05/cannes-film-festival-2013-bling-ring.html
Peter Bradshaw        6        http://www.guardian.co.uk/film/2013/may/16/bling-ring-cannes-2013-review
# Criticwire
Beatrice Behn         3 	http://www.indiewire.com/film/the-bling-ring
Craig Skinner         1.5 	http://www.indiewire.com/film/the-bling-ring
Ryland Aldrich        5 	http://www.indiewire.com/film/the-bling-ring
David Sterrit         7 	http://www.indiewire.com/film/the-bling-ring
Blake Williams        4.4       https://twitter.com/Astrostic/status/335115053583978496
#
Adam Cook             6          http://mubi.com/notebook/posts/cannes-2013-dialogues-sofia-coppolas-the-bling-ring
Arnaud Hée            
Christoph Huber       5       
Frédéric Jaeger       5       
Till Kadritzke        6       http://www.critic.de/film/the-bling-ring-5396/
Daniel Kasman         2.5     http://mubi.com/notebook/posts/cannes-2013-dialogues-sofia-coppolas-the-bling-ring
Michael Kienzl        5       

"FRUITVALE STATION" (Ryan COOGLER) [Un Certain Regard] UCR Avenir Price
  Sundance - Main Prices
# metacritic
Eric Kohn (Indiewire, USA) 8.3 http://www.indiewire.com/article/sundance-review-ryan-cooglers-fruitvale-renders-a-tragic-police-shooting-in-personal-terms
Todd McCarthy (The Hollywood Reporter, USA) 8 http://www.metacritic.com/movie/fruitvale-station/critic-reviews
Geoff Berkshire (Variety, USA) 5 http://www.metacritic.com/movie/fruitvale-station/critic-reviews
Jessica Kiang        7.5      http://blogs.indiewire.com/theplaylist/cannes-review-fruitvale-station-recounts-a-tragic-true-life-story-with-good-performances-and-good-intentions-but-little-subtlety-20130517
#
Roger Alan Koza      
Diego Batlle         6
Diego Lerer          5.5
Alex Vicente         
Jose Luis De Lorenzo 9
Cecilia Martinez     7
Fernando Ganzo       
Eulàlia Iglesias     4
Ángel Quintana       4.5
José Luis Losa       1
Pedro Butcher        2
Kieron Corless       
Luciano Barisone     5
Carlo Chatrian       
Violeta Kovacsics    
Luciano Monteagudo   
Jaime Pena           4
Rüdiger Suchsland    
Carlos Heredero      3
Robert Koehler       3
Dana Linssen         
Cristina Nord        
Francisco Ferreira   
Paolo Moretti        
Neil Young           5     https://twitter.com/JigsawLounge/status/335142409858072576
Scott Foundas        
Marcelo Alderete     
Alexandra Zawia      1.5
Boris Nelepo         
Carlos Reviriego     1
Fernando Juan Lima   4
Paolo Bertolin       
Nando Salva          1
Philip Engel        2.5
Antoine Thirion        
Michal Oleszczyk     
Pablo O. Scholz      6
Alejandro G. Calvo   4
Xavi Serra           4
Guido Castillo       6
Ronald Rovers        
Javier H. Estrada    3.5
Rose Kuo             
Pamela Bienzobas     
Alvaro Arroba        
Fredy Friedlander     
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      1   
Thomas Sotinel        2.5
Philippe Rouyer       2.5
Pierre Vavasseur      
Pierre Murat          1
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
#
Adam Cook                     
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger      2.5     
Till Kadritzke       4        
Daniel Kasman         
Michael Kienzl       4       
#
Mike d'Angelo        w/o      https://twitter.com/gemko/status/335147871613640704
Logan Hill           9        http://www.indiewire.com/film/fruitvale
Raffi Asdourian      5        http://www.indiewire.com/film/fruitvale
Blake Williams       4.0     https://twitter.com/Astrostic/status/335157906041339904
John Bleasdale       10      http://www.cine-vue.com/2013/05/cannes-film-festival-2013-fruitvale.html
Jo Ann Titmarsh      8        http://www.flickeringmyth.com/2013/05/66th-cannes-film-festival-review.html

"L'INCONNU DU LAC (Stranger by the Lake)" (Alain GUIRAUDIE) [Un Certain Regard] UCR Best director
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409923/year/2013.html
Mike d'Angelo        5       http://www.avclub.com/articles/cannes-2013-day-two-iranian-director-asghar-farhad,97892/
Roger Koza            10
Diego Batlle          8.5
Diego Lerer           6
Alex Vicente          
Jose Luis De Lorenzo  4
Cecilia Martinez      6
Fernando Ganzo        8
Eulàlia Iglesias     7.5
Ángel Quintana       8
José Luis Losa       8.5
Pedro Butcher         8.5
Kieron Corless        8.5
Luciano Barisone      7
Carlo Chatrian        9
Violeta Kovacsics     8
Luciano Monteagudo    9.5
Jaime Pena            7.5
Rüdiger Suchsland     6
Carlos F. Heredero    6.5
Robert Koehler        10
Dana Linssen          7
Cristina Nord         8.5
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      7.5
Alexandra Zawia       
Boris Nelepo          7.5
Carlos Reviriego      7
Fernando Juan Lima    8
Paolo Bertolin        7.5
Nando Salva           
Philip Engel          
Antoine Thirion       9.3     http://www.independencia.fr/revue/spip.php?article768
Eugenio Renzi         9.5
Michal Oleszczyk      
Pablo O. Scholz       
Alejandro G. Calvo    8
Xavi Serra            7.5
Guido Castillo        8
Ronald Rovers         
Javier H. Estrada     7.5
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         8.5
Fredy Friedlander     6
# Le film français 0-4
Stéphanie Lamome      9
Arnaud Schwartz       2.5
Fabrice Leclerc       7.5
Eric Neuhoff          5
Stéphane Delorme      7.5   
Thomas Sotinel        
Philippe Rouyer       5
Pierre Vavasseur      
Pierre Murat          7.5
Jean Roy              5
Serge Kaganski        9
Pierre Fornerod       1
Pascal Merigeau       5
Danielle Attali       1
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            7.5     http://mubi.com/notebook/posts/cannes-2013-illusory-isolation-alain-guiraudies-stranger-by-the-lake
Arnaud Hée           9       
Christoph Huber              
Frédéric Jaeger      7.5     http://www.critic.de/film/linconnu-du-lac-5580/
Till Kadritzke               
Daniel Kasman        9       
Michael Kienzl       9       
#
Glenn Heath Jr       8       http://www.indiewire.com/film/linconnu-du-lac
Clementine Gallot    8       http://www.indiewire.com/film/linconnu-du-lac
John Bleasdale       4       http://www.cine-vue.com/2013/05/cannes-film-festival-2013-stranger-by.html
Blake Williams       7.2     https://twitter.com/Astrostic/status/335346286784024576
Cédric Succivalli            http://icsfilm.org/news/198-cannes-2013-review-linconnu-du-lac
Geoff Andrews (Sight&Sound, UK)   http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2013-tough-acts-follow


"MIELE" (Valeria GOLINO) [Un Certain Regard]
  (Italy premiered already Mai 1st)
Lee Marshall (Screen Daily, USA)  http://www.screendaily.com/reviews/the-latest/miele/5054710.article?blocktitle=UN-CERTAIN-REGARD&contentID=40442
Kevin Jagernauth     6        http://blogs.indiewire.com/theplaylist/cannes-review-death-lingers-lifts-in-thoughtful-miele-20130517
Jose Luis De Lorenzo  4
Cecilia Martinez      4
Luciano Barisone      7
Rüdiger Suchsland    4.5
Carlos F. Heredero    6
Robert Koehler        2.5
Alexandra Zawia       4
Fernando Juan Lima    3.5
Pamela Bienzobas      5.5
Fredy Friedlander     7
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme         
Thomas Sotinel        5
Philippe Rouyer       2.5
Pierre Vavasseur      
Pierre Murat          5
Jean Roy              5
Serge Kaganski        
Pierre Fornerod       2.5
Pascal Merigeau       5
Danielle Attali       
Christophe Carriére   
# 
Adam Cook            2.5     
Arnaud Hée           
Christoph Huber      
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        
Michael Kienzl       
#
John Bleasdale        4      http://www.cine-vue.com/2013/05/cannes-film-festival-2013-miele-review.html

"GRAND CENTRAL" (Rebecca ZLOTOWSKI) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409904/year/2013.html
Mike d'Angelo                 https://twitter.com/gemko/status/335789145567948802
Roger Koza            
Diego Batlle          6.5
Diego Lerer           
Alex Vicente          7
Jose Luis De Lorenzo  5
Cecilia Martinez      5.5
Fernando Ganzo        0.5
Eulàlia Iglesias     7.5
Ángel Quintana       6.5
José Luis Losa       8
Pedro Butcher         
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     
Luciano Monteagudo    5.5
Jaime Pena            8
Rüdiger Suchsland    8.5
Carlos F. Heredero    7
Robert Koehler        2
Dana Linssen          6
Cristina Nord         7
Francisco Ferreira    
Paolo Moretti         7
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       4
Boris Nelepo          
Carlos Reviriego      7.5
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           
Philip Engel          9
Antoine Thirion       5       http://www.independencia.fr/revue/spip.php?article768
Michal Oleszczyk      
Pablo O. Scholz       5.5
Alejandro G. Calvo    6.5
Xavi Serra            6.5
Guido Castillo        6
Ronald Rovers         3.5
Javier H. Estrada     8
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         
Fredy Friedlander     9
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       7.5
Fabrice Leclerc       9
Eric Neuhoff          5
Stéphane Delorme      7.5  
Thomas Sotinel        7.5
Philippe Rouyer       5
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        5
Pierre Fornerod       5
Pascal Merigeau       5
Danielle Attali       
Christophe Carriére   
Adam Cook            2.5    
Arnaud Hée           2.5
Christoph Huber      4      
Frédéric Jaeger      9      http://www.critic.de/film/grand-central-5586/
Till Kadritzke       9      
Daniel Kasman               
Michael Kienzl       6      
#
Lee Marshall                http://www.screendaily.com/reviews/the-latest/grand-central/5056361.article?blocktitle=Cannes-Reviews&contentID=1842
Jessica Kiang        7      http://blogs.indiewire.com/theplaylist/cannes-review-grand-central-weaves-a-lyrical-tale-of-love-and-radiation-around-tahar-rahim-lea-seydoux-20130519
John Bleasdale       8      http://www.cine-vue.com/2013/05/cannes-film-festival-2013-grand-central.html
Blake Williams       4.4    https://twitter.com/Astrostic/status/335713192271552514


"BENDS" (Flora LAU) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11404616/year/2013.html
Mike d'Angelo              https://twitter.com/gemko/status/336075030393913344
Diego Lerer           6
Ángel Quintana        4
José Luis Losa        3
Jaime Pena            4.5
Rüdiger Suchsland     4.5
Carlos F. Heredero    4.5
Robert Koehler        7
Carlos Reviriego      5
Fernando Juan Lima    4
Pablo O. Scholz       5
Javier H. Estrada     5.5
Adam Cook            5        
#
Tim Grierson                  http://www.screendaily.com/reviews/the-latest/bends/5056354.article?blocktitle=The-Latest&contentID=598
Blake Williams       5.1      https://twitter.com/Astrostic/status/335754171531804675

"L'IMAGE MANQUANTE (The missing picture)" (Rithy PANH) [Un Certain Regard] Top Price UCR
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409770/year/2013.html
Roger Koza            7.5
Diego Batlle          7.5
Diego Lerer           8.5
Alex Vicente          
Jose Luis De Lorenzo
Cecilia Martinez      
Fernando Ganzo        6
Eulàlia Iglesias     8.5
Ángel Quintana       8.5
José Luis Losa       8.5
Pedro Butcher         
Kieron Corless        6.5
Luciano Barisone      
Carlo Chatrian        8
Violeta Kovacsics     7
Luciano Monteagudo    8
Jaime Pena            6
Rüdiger Suchsland     
Carlos F. Heredero    8
Robert Koehler        8
Dana Linssen          
Cristina Nord         8.5
Francisco Ferreira    
Paolo Moretti         7
Neil Young            
Scott Foundas         
Marcelo Alderete      5
Alexandra Zawia       8.5
Boris Nelepo          6
Carlos Reviriego      9
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           
Philip Engel          7.5
Antoine Thirion         
Michal Oleszczyk      
Pablo O. Scholz       8
Alejandro G. Calvo    9
Xavi Serra            8
Guido Castillo        8.5
Ronald Rovers         
Javier H. Estrada     6.5
Rose Kuo              
Pamela Bienzobas      8.5
Alvaro Arroba         6.5
Fredy Friedlander     
# critic.de
Adam Cook            6        
Arnaud Hée           7.5
Christoph Huber      9        
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        6        
Michael Kienzl       7.5     http://www.critic.de/film/limage-manquante-5582/
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       9
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme         
Thomas Sotinel        
Philippe Rouyer       9
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        9
Pierre Fornerod       
Pascal Merigeau       9
Danielle Attali       
Christophe Carriére   
# 
Blake Williams        4.3     https://twitter.com/Astrostic/status/336159252731269120

"DEATH MARCH" (Adolfo ALIX JR.) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409819/year/2013.html
Diego Lerer           4
Ángel Quintana       6
Jaime Pena            3
Rüdiger Suchsland    2
Fernando Juan Lima    3.5
Antoine Thirion       4
Pablo O. Scholz       3
Guido Castillo        1
Javier H. Estrada     7.5
Christoph Huber      4         
# Le film français 0-4
Stéphanie Lamome      2.5
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      2.5
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook                    
Arnaud Hée                   
Christoph Huber      4        
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        4
Michael Kienzl       

"OMAR" (Hany ABU-ASSAD) [Un Certain Regard] UCR Jury Price
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409601/year/2013.html
Jose Luis De Lorenzo  5
Dana Linssen          6
Paolo Moretti         6
Guido Castillo        7
Ronald Rovers         6
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       7.5
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme         
Thomas Sotinel        5
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
Frédéric Jaeger       4       
Jon Frosch            6       http://www.indiewire.com/film/omar
Ryland Aldrich        7       http://www.indiewire.com/film/omar
Barbara Scharres              http://www.rogerebert.com/cannes/globe-trotting-cannes-report-may-23

"AS I LAY DYING" (James FRANCO) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11406263/year/2013.html
Mike d'Angelo         0     https://twitter.com/gemko/status/336597474598858752
Roger Koza            5
Diego Batlle          3
Diego Lerer           4
Alex Vicente          4
Jose Luis De Lorenzo  2
Cecilia Martinez      1
Fernando Ganzo        
Eulàlia Iglesias     
Ángel Quintana       5.5
José Luis Losa       3
Pedro Butcher         
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     
Luciano Monteagudo    
Jaime Pena            2
Rüdiger Suchsland    5.5
Carlos F. Heredero    
Robert Koehler        
Dana Linssen          
Cristina Nord         
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      1.5
Alexandra Zawia       1.5
Boris Nelepo          
Carlos Reviriego      6.5
Fernando Juan Lima    2
Paolo Bertolin        
Nando Salva           
Philip Engel          
Antoine Thirion       
Michal Oleszczyk      
Pablo O. Scholz       4
Alejandro G. Calvo    7.5
Xavi Serra            
Guido Castillo        
Ronald Rovers         
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      6
Alvaro Arroba         
Fredy Friedlander     
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          5
Stéphane Delorme         
Thomas Sotinel        1
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          5
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
#
Guy Lodge             3       https://twitter.com/GuyLodge/status/336511757117960192
Beatrice Behn                 http://www.kino-zeit.de/blog/cannes/as-i-lay-dying
Boyd van Hoeij        7       http://www.indiewire.com/film/as-i-lay-dying
Patrick Heidmann      4       http://www.indiewire.com/film/as-i-lay-dying
Kevin Jagernauth      3       http://www.indiewire.com/film/as-i-lay-dying
Shaun Munro           0.5     http://www.filmschoolrejects.com/reviews/cannes-2013-review-as-i-lay-dying.php
Peter Bradshaw       6        http://www.guardian.co.uk/film/2013/may/20/james-franco-as-i-lay-dying-review
Logan Hill                    http://artsbeat.blogs.nytimes.com/2013/05/21/cannes-film-festival-james-franco-on-adapting-novels-and-multitasking/

"SARAH PRÉFÈRE LA COURSE (SARAH PREFERS TO RUN)" (Chloé ROBICHAUD) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409764/year/2013.html
Jose Luis De Lorenzo  7.5
Ángel Quintana       5
José Luis Losa       5.5
Carlo Chatrian        5
Jaime Pena            5.5
Rüdiger Suchsland    6
Robert Koehler        2.5
Fernando Juan Lima    6
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme         
Thomas Sotinel        5
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          1
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
#
Shaun Munro           6       http://www.filmschoolrejects.com/reviews/cannes-2013-review-sarah-prefers-to-run.php

"LES SALAUDS (BASTARDS)" (Claire DENIS) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409929/year/2013.html
Mike d'Angelo         6.3     https://twitter.com/gemko/status/336976294615068675
Roger Koza            8.5
Diego Batlle          8
Diego Lerer           9
Alex Vicente          6
Jose Luis De Lorenzo  3
Cecilia Martinez      1
Fernando Ganzo        
Eulàlia Iglesias     8
Ángel Quintana       8.5
José Luis Losa       6
Pedro Butcher         6
Kieron Corless        4.5
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     9
Luciano Monteagudo    8.5
Jaime Pena            9
Rüdiger Suchsland     7.5
Carlos F. Heredero    6.5
Robert Koehler        8.5
Dana Linssen          8.5
Cristina Nord         6.5
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      8
Alexandra Zawia       8
Boris Nelepo          2
Carlos Reviriego      6
Fernando Juan Lima    7.5
Paolo Bertolin        
Nando Salva           
Philip Engel          8
Antoine Thirion       5       http://www.independencia.fr/revue/spip.php?article773
Michal Oleszczyk      
Pablo O. Scholz       7
Alejandro G. Calvo    
Xavi Serra            6.5
Guido Castillo        8
Ronald Rovers         
Javier H. Estrada     8.5
Rose Kuo              
Pamela Bienzobas      7.5
Alvaro Arroba         7
Fredy Friedlander     
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       1
Fabrice Leclerc       
Eric Neuhoff          1
Stéphane Delorme      5  
Thomas Sotinel        5
Philippe Rouyer       2.5
Pierre Vavasseur      
Pierre Murat          1
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       5
Danielle Attali       
Christophe Carriére   5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            7.5        
Arnaud Hée           5        
Christoph Huber              
Frédéric Jaeger      7.5     
Till Kadritzke       9       
Daniel Kasman        7.5      http://mubi.com/notebook/posts/cannes-2013-the-gloaming-claire-denis-bastards
Michael Kienzl       7.5      http://www.critic.de/film/les-salauds-5560/
# criticwire
Glenn Heath Jr       9        http://www.indiewire.com/film/les-salauds
Raffi Asdourian      7        http://www.indiewire.com/film/les-salauds
Alex Billington      8        http://www.indiewire.com/film/les-salauds
Eric Kohn            3        http://www.indiewire.com/film/les-salauds
Jessica Kiang        5        http://www.indiewire.com/film/les-salauds
Shaun Munro          1        http://www.filmschoolrejects.com/reviews/cannes-2013-review-bastards.php
Xan Brooks           4        http://www.guardian.co.uk/film/2013/may/21/les-salauds-cannes-2013
Amy Taubin (Sight&Sound, UK)  http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2013-this-noir

"WAKOLDA" (Lucía PUENZO) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11412006/year/2013.html
Roger Koza            6
Diego Batlle          7
Diego Lerer           6.5
Alex Vicente          
Jose Luis De Lorenzo  2
Cecilia Martinez      6
Fernando Ganzo        
Eulàlia Iglesias     
Ángel Quintana       4
José Luis Losa       2.5
Pedro Butcher         6
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     
Luciano Monteagudo    6
Jaime Pena            
Rüdiger Suchsland    
Carlos F. Heredero    5.5
Robert Koehler        7
Dana Linssen          
Cristina Nord         2.5
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       5
Boris Nelepo          
Carlos Reviriego      3.5
Fernando Juan Lima    6
Paolo Bertolin        
Nando Salva           
Philip Engel          
Antoine Thirion       
Michal Oleszczyk      
Pablo O. Scholz       7
Alejandro G. Calvo    3
Xavi Serra            
Guido Castillo        
Ronald Rovers         
Javier H. Estrada     3.5
Rose Kuo              
Pamela Bienzobas      5
Alvaro Arroba         
Fredy Friedlander     6
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme         
Thomas Sotinel        2.5
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Arnaud Hée            5
Till Kadritzke        5
# criticwire
Clementine Gallot     6       http://www.indiewire.com/film/wakolda
Shaun Munro           1       http://www.filmschoolrejects.com/reviews/cannes-2013-review-wakolda.php
Blake Williams        3.7     https://twitter.com/Astrostic/status/337204495811506176

"LA JAULA DE ORO" (Diego QUEMADA-DIEZ) [Un Certain Regard] UCR A Certain Talent Prize
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409875/year/2013.html
Diego Batlle          6
Diego Lerer           6.5
Jose Luis De Lorenzo  5
Cecilia Martinez      7
Eulàlia Iglesias     7.5
Ángel Quintana       6
José Luis Losa       6.5
Jaime Pena            7
Carlos F. Heredero    7
Robert Koehler        4.5
Neil Young            5
Carlos Reviriego      7
Philip Engel          6
Pablo O. Scholz       6
Alejandro G. Calvo    6
# Le film français 0-4
Stéphanie Lamome      2.5
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme         
Thomas Sotinel        5
Philippe Rouyer       7.5
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Till Kadritzke        4
# criticwire
Clementine Gallot     6       http://www.indiewire.com/film/la-jaula-de-oro
Ryland Aldrich        6       http://www.indiewire.com/film/la-jaula-de-oro
Peter Bradshaw                http://www.guardian.co.uk/film/2013/may/23/golden-cage-jaula-de-oro-review

"MY SWEET PEPPER LAND" (Hiner SALEEM) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11416039/year/2013.html
José Luis Losa       1.5
Robert Koehler        3.5
Blake Williams        3.9     https://twitter.com/Astrostic/status/337450571181207552

"NORTE, HANGGANAN NG KASAYSAYAN (NORTE, THE END OF HISTORY)" (Lav DIAZ) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409844/year/2013.html
Roger Koza            
Diego Batlle          6
Diego Lerer           7.5
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        
Eulàlia Iglesias     9
Ángel Quintana       7.5
José Luis Losa       6.5
Pedro Butcher         7
Kieron Corless        9.5     http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2013
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     
Luciano Monteagudo    
Jaime Pena            10
Rüdiger Suchsland    
Carlos F. Heredero    9.5
Robert Koehler        8
Dana Linssen          
Cristina Nord         9
Francisco Ferreira    
Paolo Moretti         8.5
Neil Young            3
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       
Boris Nelepo          10
Carlos Reviriego      8.5
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           
Philip Engel          
Antoine Thirion       8
Michal Oleszczyk      
Pablo O. Scholz       
Alejandro G. Calvo    8
Xavi Serra            
Guido Castillo        
Ronald Rovers         
Javier H. Estrada     9
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         10
Fredy Friedlander     
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            9
Arnaud Hée           
Christoph Huber      9      
Frédéric Jaeger      9       
Till Kadritzke       
Daniel Kasman        9
Michael Kienzl       9        
Blake Williams       7.8      https://twitter.com/Astrostic/status/337565096823902209

"TORE TANZT (NOTHING BAD CAN HAPPEN)" (Katrin GEBBE) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11411998/year/2013.html
Diego Batlle          3
José Luis Losa       5.5
Luciano Monteagudo    2
Rüdiger Suchsland    2
Robert Koehler        1
Cristina Nord         2.5
Fernando Juan Lima    2
Pablo O. Scholz       4
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook            
Arnaud Hée           
Christoph Huber      
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        
Michael Kienzl       5
Blake Williams       0.6      https://twitter.com/Astrostic/status/337607129622007808

"DAST-NEVESHTEHAA NEMISOOSAND (Manuscripts Don’t Burn)" (Mohammad RASOULOF) [Un Certain Regard] FIPRESCI Price UCR
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409842/year/2013.html
Roger Koza            7.5
Diego Batlle          6.5
Diego Lerer           7
José Luis Losa       9
Luciano Monteagudo    7
Jaime Pena            4
Robert Koehler        7.5
Alexandra Zawia       7
Pablo O. Scholz       7
Javier H. Estrada     5.5

OUT OF COMPETITION

"ALL IS LOST" (J.C CHANDOR) [Out of Competition]
Mike d'Angelo         7.4     https://twitter.com/gemko/status/337170891639246848
Diego Batlle          6.5
Diego Lerer           6.5
Jose Luis De Lorenzo  7
Cecilia Martinez      8.5
Ángel Quintana       8
José Luis Losa       8
Pedro Butcher         6
Carlo Chatrian        7.5
Carlos F. Heredero    6
Carlos Reviriego      6.5
Fernando Juan Lima    4
Pablo O. Scholz       7
Xavi Serra            6
Guido Castillo        7
# criticwire
Logan Hill            8       http://www.indiewire.com/film/all-is-lost
Raffi Asdourian       7       http://www.indiewire.com/film/all-is-lost
Ryland Aldrich        6       http://www.indiewire.com/film/all-is-lost
Eric Kohn             8       http://www.indiewire.com/film/all-is-lost
Ben Kenigsberg                http://www.rogerebert.com/cannes/cannes-review-robert-redford-fights-the-elements-in-all-is-lost

"BLOOD TIES" (Guillaume CANET) [Out of Competition]
Alex Vicente          5
Ángel Quintana       5.5
José Luis Losa       5
Pedro Butcher         5
Alexandra Zawia       1
Fernando Juan Lima    7.5
Pablo O. Scholz       6
Alejandro G. Calvo    1.5
Xavi Serra            6
Alvaro Arroba         3.5
Fredy Friedlander     6
# critic.de
Frédéric Jaeger      4       
Till Kadritzke       5       http://www.critic.de/film/blood-ties-5588/
# criticwire
Kevin Jagernauth     3       http://blogs.indiewire.com/theplaylist/cannes-review-sprawling-uneven-crime-saga-blood-ties-falls-short-of-epic-scope-20130519
Ryland Aldrich       7       http://www.indiewire.com/film/blood-ties
Shaun Munro           3      http://www.filmschoolrejects.com/reviews/cannes-2013-review-blood-ties.php
Xan Brooks           6       http://www.guardian.co.uk/film/2013/may/19/cannes-blood-ties-review

"LE DERNIER DES INJUSTES (THE LAST OF THE UNJUST)" (Claude LANZMANN) [Out of Competition]
Roger Koza            10
Diego Batlle          9
Diego Lerer           8.5
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        8
Eulàlia Iglesias     8.5
Ángel Quintana       10
José Luis Losa       10
Pedro Butcher         
Kieron Corless        8
Luciano Barisone      
Carlo Chatrian        7.5
Violeta Kovacsics     7.5
Luciano Monteagudo    9
Jaime Pena            10
Rüdiger Suchsland    7.5
Carlos F. Heredero    8
Robert Koehler        5
Dana Linssen          
Cristina Nord         8
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       5
Boris Nelepo          
Carlos Reviriego      
Fernando Juan Lima    
Paolo Bertolin        
Nando Salva           
Philip Engel          
Antoine Thirion         
Michal Oleszczyk      
Pablo O. Scholz       7
Alejandro G. Calvo    
Xavi Serra            
Guido Castillo        
Ronald Rovers         7.5
Javier H. Estrada     8.5
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         10
Fredy Friedlander     8
# critic.de
Adam Cook             
Arnaud Hée            5
Christoph Huber       9      
Frédéric Jaeger       9      
Till Kadritzke        
Daniel Kasman         7.5        
Michael Kienzl        7.5    

"THE GREAT GATSBY" (Baz LUHRMANN) [Out of Competition]
  (US premiered already May 7)
Stephanie Zacharek (Village Voice, USA) 7 http://www.villagevoice.com/2013-05-08/film/gatsby-s-sometimes-great-but-not-always-good/full/
Todd McCarthy (The Hollywood Reporter, USA) 7 http://www.hollywoodreporter.com/movie/great-gatsby/review/451988
Richard Corliss       7 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
David Edelstein (New York Magazine-Vulture, USA) 7 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
A.O.Scott (New York Times, USA) 7 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
Scott Foundas (Variety, USA) 6 http://variety.com/2013/film/reviews/the-great-gatsby-review-1200447930/#!1/review-tobey-maguire/
Claudia Puig (USA Today, USA) 5 http://www.usatoday.com/story/life/movies/2013/05/08/great-gatsby-review/2107037/
Eric Kohn (Indiewire, USA) 4.2 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
Andrew O'Hehir (Salon.com, USA) 4 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
Keith Uhlich (Time Out New York, USA) 4 http://www.timeout.com/us/film/the-great-gatsby-movie-review
Roger Koza            3.5
Diego Batlle          6
Diego Lerer           6.5
Alex Vicente          6
Jose Luis De Lorenzo  2
Cecilia Martinez      5
Fernando Ganzo        0
Eulàlia Iglesias      6
Ángel Quintana        5
José Luis Losa        1
Pedro Butcher         4.5
Kieron Corless        
Luciano Barisone      1
Carlo Chatrian        2
Violeta Kovacsics     5
Luciano Monteagudo    5
Jaime Pena            5.5
Rüdiger Suchsland     6.5       http://www.negativ-film.de/2013/05/die-letzte-party-cannes-blog-2-folge
Carlos F. Heredero    3
Robert Koehler        2
Dana Linssen          6
Cristina Nord         3
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       2
Boris Nelepo          6.5
Carlos Reviriego      3
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           7
Philip Engel          4
Antoine Thirion         
Michal Oleszczyk      
Pablo O. Scholz       5
Alejandro G. Calvo    6.5
Xavi Serra            4
Guido Castillo        7
Ronald Rovers         6
Javier H. Estrada     3
Rose Kuo              
Pamela Bienzobas      4.5
Alvaro Arroba         1.5
Fredy Friedlander     
Michael Sennhauser             http://sennhausersfilmblog.ch/2013/05/15/cannes-13-the-great-gatsby-von-baz-luhrman/
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       5
Fabrice Leclerc       7.5
Eric Neuhoff          1
Stéphane Delorme      2.5   
Thomas Sotinel        2.5
Philippe Rouyer       2.5
Pierre Vavasseur      5
Pierre Murat          
Jean Roy              5
Serge Kaganski        1
Pierre Fornerod       5
Pascal Merigeau       2.5
Danielle Attali       5
Christophe Carriére   2.5
#
Anne Thompson         6         http://www.indiewire.com/film/the-great-gatsby
Craig Williams        2 	http://www.indiewire.com/film/the-great-gatsby
Fico Cangiano         4
Adam Batty            3 	http://www.indiewire.com/film/the-great-gatsby
Robert Gassaway       2 	http://www.indiewire.com/film/the-great-gatsby
Yair Raveh            7 	http://www.indiewire.com/film/the-great-gatsby
Patrick Heidmann      4 	http://www.indiewire.com/film/the-great-gatsby
#
Adam Cook             
Arnaud Hée           
Christoph Huber       2.5     
Frédéric Jaeger       6       
Till Kadritzke        6       http://www.critic.de/film/the-great-gatsby-4168/
Daniel Kasman                 
Michael Kienzl        4       

"ZULU" (Jérôme SALLE) [Out of Competition]
Jose Luis De Lorenzo  3.5
Cecilia Martinez      2
José Luis Losa       4.5
Alexandra Zawia       2.5
Ronald Rovers         3.5
Patrick Heidmann      2       http://www.indiewire.com/film/zulu

MIDNIGHT PROJECTIONS

"MONSOON SHOOTOUT" (Amit KUMAR) [Out of Competition]
Roger Koza            3
Alejandro G. Calvo    4
#criticwire
Craig Skinner         1      http://www.indiewire.com/film/monsoon-shootout
Ryland Aldrich        5      http://www.indiewire.com/film/monsoon-shootout
Shaun Munro           1      http://www.filmschoolrejects.com/reviews/cannes-2013-review-monsoon-shootout.php
Peter Bradshaw        6      http://www.guardian.co.uk/film/2013/may/19/cannes-2013-monsoon-shootout-review

"BLIND DETECTIVE (MAN TAM)" (Johnnie TO) [Out of Competition]
Mike d'Angelo        4.9      http://www.avclub.com/articles/cannes-2013-day-five-takashi-miike-schlocks-it-up,97957/
Roger Koza            8
Diego Batlle          4.5
Diego Lerer           4
Alex Vicente          
Jose Luis De Lorenzo  6.5
Cecilia Martinez      7.5
Fernando Ganzo        
Eulàlia Iglesias     
Ángel Quintana       
José Luis Losa       3
Pedro Butcher         7
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     
Luciano Monteagudo    4
Jaime Pena            3.5
Rüdiger Suchsland    3.5
Carlos F. Heredero    3
Robert Koehler        4
Dana Linssen          
Cristina Nord         
Francisco Ferreira    
Paolo Moretti         
Neil Young            4
Scott Foundas         
Marcelo Alderete      9
Alexandra Zawia       4.5
Boris Nelepo          8
Carlos Reviriego      5
Fernando Juan Lima    7
Paolo Bertolin        
Nando Salva           
Philip Engel          7
Antoine Thirion       6.5
Michal Oleszczyk      
Pablo O. Scholz       4
Alejandro G. Calvo    4
Xavi Serra            6.5
Guido Castillo        
Ronald Rovers         
Javier H. Estrada     6
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         
Fredy Friedlander     
# critic.de
Adam Cook             7.5    
Arnaud Hée            4      
Christoph Huber       9      
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         9      
Michael Kienzl
# critiwire
Glenn Heath Jr        7      http://www.indiewire.com/film/blind-detective
Raffi Asdourian       2      http://www.indiewire.com/film/blind-detective
Craig Skinner         5      http://www.indiewire.com/film/blind-detective
Shaun Munro           0.5    http://www.filmschoolrejects.com/reviews/cannes-2013-review-blind-detective.php
Blake Williams        5.3    https://twitter.com/Astrostic/status/336536286095634432

SPECIAL SCREENINGS

"STOP THE POUNDING HEART" (Roberto MINERVINI) [Special Screening]
Carlo Chatrian        7.5

"OTDAT KONCI (BITE THE DUST)" (Taisia IGUMENTSEVA) [Special Screening]
José Luis Losa       6.5
Neil Young            5       http://www.hollywoodreporter.com/review/bite-dust-otdat-konci-cannes-524958
Fernando Juan Lima    2
Pablo O. Scholz       4
Javier H. Estrada     6.5

"BOMBAY TALKIES" (Zoya AKHTAR, Dibakar BANERJEE, Karan JOHAR, Anurag KASHYAP) [Special Screening]

"SEDUCED AND ABANDONED" (James TOBACK) [Special Screening]
Mike d'Angelo        5.2      https://twitter.com/gemko/status/336076257953464321
José Luis Losa       7
Jaime Pena            6
Rüdiger Suchsland    10
Alexandra Zawia       4.5
Xavi Serra            4
Alvaro Arroba         5.5
# criticwire
Patrick Heidmann     6
Logan Hill           7       http://www.indiewire.com/film/seduced-abandoned
Alex Billington      3       http://www.indiewire.com/film/seduced-abandoned
Ryland Aldrich       3       http://www.indiewire.com/film/seduced-abandoned
Kevin Jagernauth     6       http://blogs.indiewire.com/theplaylist/review-seduced-and-abandoned-enjoyably-explores-the-surreal-world-of-film-financing-20130519
Peter Bradshaw       8       http://www.guardian.co.uk/film/2013/may/19/cannes-seduced-and-abandoned-review
Ben Kenigsberg               http://www.rogerebert.com/cannes/cannes-yacht-parties-faulkner-and-cannibal-families

"MUHAMMAD ALI'S GREATEST FIGHT" (Stephen FREARS) [Special Screening]
Eulàlia Iglesias     3.5
José Luis Losa       2
Rüdiger Suchsland    6
Alejandro G. Calvo    1
#
Logan Hill           2       http://www.indiewire.com/film/muhammad-alis-greatest-fight
Xan Brooks           4       http://www.guardian.co.uk/film/2013/may/22/muhammad-ali-greatest-fight-cannes-2013
Barbara Scharres              http://www.rogerebert.com/cannes/am-i-blue-cannes-report-may-22

"WEEKEND OF A CHAMPION" (Frank SIMON) [Special Screening]
Rüdiger Suchsland    7
Neil Young            6.5
# criticwire
Ryland Aldrich        6      http://www.indiewire.com/film/weekend-of-a-champion
Peter Bradshaw        6      http://www.guardian.co.uk/film/2013/may/21/cannes-2013-weekend-of-a-champion-review

"MAX ROSE" (Daniel NOAH) [Special Screening]
Jaime Pena            4
#
Ryland Aldrich        0      https://twitter.com/RylandAldrich/status/337637358956589056
Michal Oleszczyk             http://www.rogerebert.com/cannes/everythings-coming-up-rose

SEMAINE DE LA CRITIC

"AIN'T THEM BODIES SAINTS" (David Lowery) [Semaine]
  (Sundance)
Carlo Chatrian        5
Jaime Pena            6
Carlos F. Heredero    6.5
Robert Koehler        7.5
Guido Castillo        7.5
#
Sebastian Doggart     10      http://www.guardian.co.uk/film/2013/jan/25/aint-them-bodies-saints-review
Jordan Hoffman        8.3     http://www.metacritic.com/movie/aint-them-bodies-saints/critic-reviews
Peter Debruge         8       http://variety.com/2013/film/reviews/ain-t-them-bodies-saints-1117949039/
Todd McCarthy         7       http://www.metacritic.com/movie/aint-them-bodies-saints/critic-reviews
Ethan Anderton        8       http://www.indiewire.com/film/aint-them-bodies-saints
Don Simpson           9       http://www.indiewire.com/film/aint-them-bodies-saints
Allison Loring        9       http://www.indiewire.com/film/aint-them-bodies-saints
A.A. Dowd             4       http://www.indiewire.com/film/aint-them-bodies-saints
Jordan Raup           8       http://www.indiewire.com/film/aint-them-bodies-saints
Kyle Smith (New York Post, USA) 1.5     http://www.indiewire.com/film/aint-them-bodies-saints
Sam Adams (Los Angeles Times, Philadelphia Inquirer, A.V. Club, USA) 8 http://www.indiewire.com/film/aint-them-bodies-saints
Eric Kohn             9       http://www.indiewire.com/film/aint-them-bodies-saints
Rodrigo Perez         8       http://www.indiewire.com/film/aint-them-bodies-saints
Alex Billington       8       http://www.indiewire.com/film/aint-them-bodies-saints
Till Kadritzke        7.5      

"SALVO" (Fabio Grassadonia & Antonio Piazza) [Semaine] Semaine Grand Prix + France 4 Revelation Prize
Roger Koza            8
Violeta Kovacsics     6
José Luis Losa        0
Jaime Pena            4.5
Robert Koehler        7.5
Fernando Juan Lima    9
Javier H. Estrada     7

"SUZANNE" (Katell Quillévéré) [Semaine]
Diego Lerer           6.5
Ángel Quintana       7.5
Jaime Pena            7
Neil Young            7    https://twitter.com/JigsawLounge/status/335140082728194048
Fredy Friedlander     7
Adam Cook            
Arnaud Hée           4
Christoph Huber      
Frédéric Jaeger      
Till Kadritzke       5
Daniel Kasman        
Michael Kienzl       

"LE DÉMANTÈLEMENT (The Dismantling)" (Sébastien Pilote) [Semaine] Semaine best screenplay
Robert Koehler        2

"FOR THOSE IN PERIL" (Paul Wright) [Semaine]
Kieron Corless        1.5
Robert Koehler        4
#
Peter Bradshaw       6        http://www.guardian.co.uk/film/2013/may/18/cannes-for-those-in-peril-review

"THE LUNCHBOX (Dabba)" (Ritesh Batra) [Semaine] Rails d’Or (critics week viewers choice award)
Carlo Chatrian        6.5
Robert Koehler        7
Dana Linssen          4.5

"LES RENCONTRES D’APRÈS MINUIT" (Yann Gonzalez) [Semaine]
Fernando Ganzo        6
Kieron Corless        6.5
Carlo Chatrian        5
Robert Koehler        10
Neil Young            5.5
Boris Nelepo          8.5
Antoine Thirion       6
Javier H. Estrada     8.5
Alvaro Arroba         6.5
# critic.de
Adam Cook             5       
Arnaud Hée            6       

"LOS DUEÑOS" (Agustín Toscano & Ezequiel Radusky) [Semaine]
Roger Koza            7.5
Diego Batlle          7.5
Diego Lerer           6.5
Carlo Chatrian        6.5
Luciano Monteagudo    7
Jaime Pena            6.5
Robert Koehler        6.5
Fernando Juan Lima    7.5
Pablo O. Scholz       7

"NOS HÉROS SONT MORTS CE SOIR" (David Perrault) [Semaine]
Roger Koza            4
José Luis Losa       2.5
Robert Koehler        3
Javier H. Estrada     5

"THE MAJOR" (Yury Bykov) [Semaine]

"3X3D" (Peter Greenaway, Jean-Luc Godard & Edgar Perâ) [Semaine]
Roger Koza            6
Jaime Pena            9
Robert Koehler        6.5
Paolo Moretti         6
Marcelo Alderete      4
Alejandro G. Calvo    7
Alvaro Arroba         7
Fredy Friedlander     6
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Adam Cook                    
Arnaud Hée           6        
Christoph Huber              
Frédéric Jaeger      5
Till Kadritzke       
Daniel Kasman        9
Michael Kienzl       
#
Blake Williams       7.0      https://twitter.com/Astrostic/status/335777627136741376


QUINZAINE

"THE CONGRESS" (Ari Folman) [Quinzaine]
Jessica Kiang        4.5  http://blogs.indiewire.com/theplaylist/cannes-review-ari-folmans-the-congress-has-too-a-little-too-much-of-everything-20130516
Guy Lodge            5	  http://www.hitfix.com/in-contention/review-robin-wright-gets-animated-in-messy-sometimes-mesmerising-the-congress
Alex Vicente          5
Fernando Ganzo        10
Kieron Corless        3.5
Jaime Pena            8
Rüdiger Suchsland     4.5
Carlos F. Heredero    6
Dana Linssen          6
Marcelo Alderete      6
Alejandro G. Calvo    6
Guido Castillo        4
Pamela Bienzobas      7
Alvaro Arroba         10
#
Adam Cook                     
Arnaud Hée            2.5     
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
#
Eric Kohn            9        http://www.indiewire.com/article/cannes-is-ari-folmans-the-congress-the-most-anti-hollywood-movie-ever-made
Blake Williams       5.2      https://twitter.com/Astrostic/status/336001913298513920
Xan Brooks           6        http://www.guardian.co.uk/film/2013/may/16/the-congress-review

"THE SELFISH GIANT" (Clio Barnard) [Quinzaine]  Best European film
Mike d'Angelo         6.8        http://www.avclub.com/articles/cannes-2013-day-three,97927/
Diego Batlle          7.5
Diego Lerer           7
Eulàlia Iglesias     6.5
Ángel Quintana       5.5
José Luis Losa       6.5
Kieron Corless        5
Jaime Pena            5
Neil Young            6.5        http://www.hollywoodreporter.com/review/selfish-giant-cannes-review-524549
Fernando Juan Lima    6
Guido Castillo        8
Ronald Rovers         7.5
Javier H. Estrada     4
Fredy Friedlander     8
Guy Lodge                        http://variety.com/2013/film/reviews/the-selfish-giant-review-1200480590/
Clementine Gallot     7          http://www.indiewire.com/film/the-selfish-giant
Blake Williams        5.8        https://twitter.com/Astrostic/status/335467846073192448
Peter Bradshaw        8          http://www.guardian.co.uk/film/2013/may/17/the-selfish-giant-cannes-2013-review

"UN VOYAGEUR (Ain't Misbehavin)" (Marcel Ophuls) [Quinzaine]
Roger Koza            6
Diego Batlle          8
Eulàlia Iglesias     6
Ángel Quintana       5.5
José Luis Losa       5
Kieron Corless        4
Luciano Monteagudo    8.5
Jaime Pena            3.5
Robert Koehler        0.5
Cristina Nord         7
Marcelo Alderete      2.5
Boris Nelepo          5
Pablo O. Scholz       8
Alejandro G. Calvo    6
Javier H. Estrada     5.5
Adam Cook            
Arnaud Hée           
Christoph Huber      6       
Frédéric Jaeger      4       
Till Kadritzke       
Daniel Kasman        4       
Michael Kienzl       

"UGLY" (Anurag Kashyap) [Quinzaine]
Kieron Corless       3
Javier H. Estrada     6
Christoph Huber      6       
Frédéric Jaeger      2.5     

"BLUE RUIN" (Jeremy Saulnier) [Quinzaine] FIPRESCI Price parallel sections
Eulàlia Iglesias     6.5
Ángel Quintana       6
Cristina Nord         6.5
Guido Castillo        7.5
Michael Kienzl       2.5     
Allan Hunter                 http://www.screendaily.com/reviews/the-latest/blue-ruin/5056353.article?blocktitle=The-Latest&contentID=598
Clementine Gallot    6    http://www.indiewire.com/film/blue-ruin
Eric Kohn                    http://www.indiewire.com/article/how-brooklyn-based-filmmaker-jeremy-saulnier-went-from-shooting-corporate-videos-to-premiering-his-movie-blue-ruin-at-cannes
Blake Williams        5.0    https://twitter.com/Astrostic/status/336484904428781569


"LA DANZA DE LA REALIDAD (The Dance of Reality)" (Alejandro Jodorowsky) [Quinzaine]
Roger Koza            1
Jose Luis De Lorenzo  10
Cecilia Martinez      6
Kieron Corless        6
Luciano Monteagudo    0.5
Jaime Pena            5.5
Rüdiger Suchsland    10
Robert Koehler        1
Marcelo Alderete      1
Boris Nelepo          7.5
Fernando Juan Lima    1
Javier H. Estrada     5.5
Pamela Bienzobas      7.5
Alvaro Arroba         3.5
Fredy Friedlander     8
# critic.de
Christoph Huber      9       
Daniel Kasman        6       
Michael Kienzl       5
# criticwire       
Alex Billington      5       http://www.indiewire.com/film/la-danza-de-la-realidad
Eric Kohn             7        http://www.indiewire.com/article/cannes-review-the-dance-of-reality-alejandro-jodorworskys-first-film-in-23-years-is-a-wacky-intimate-return-to-form
Craig Skinner        9       http://www.indiewire.com/film/la-danza-de-la-realidad
Peter Bradshaw       8       http://www.guardian.co.uk/film/2013/may/18/cannes-2013-alejandro-jodorowsky-reality-dance

"JODOROWSKY'S DUNE" (Frank Pavich) [Quinzaine]
Roger Koza            5
Eulàlia Iglesias     5.5
José Luis Losa       6
Paolo Moretti         4
Marcelo Alderete      3
Boris Nelepo          4
Pamela Bienzobas      6
# criticwire
Raffi Asdourian      7    http://www.indiewire.com/film/jodorowskys-dune
Alex Billington      8    http://www.indiewire.com/film/jodorowskys-dune

"ILO ILO" (Anthony Chen) [Quinzaine]
Robert Koehler        7.5
Javier H. Estrada     6.5

"TIP TOP" (Serge Bozon) [Quinzaine] Special mention
Roger Koza            5.5
Diego Batlle          6.5
Diego Lerer           7
Fernando Ganzo        8
Eulàlia Iglesias     5.5
Ángel Quintana       5.5
Kieron Corless        6.5
Violeta Kovacsics     7
Jaime Pena            4.5
Robert Koehler        6
Cristina Nord         8
Paolo Moretti         5
Boris Nelepo          7
Carlos Reviriego      5.5
Fernando Juan Lima    5
Antoine Thirion       7.5
Pamela Bienzobas      6.5
# critic.de
Adam Cook            6        
Arnaud Hée           
Christoph Huber      6        
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        5        
Michael Kienzl       
#
Glenn Heath Jr       7        http://www.indiewire.com/film/tip-top
Blake Williams       6.0      https://twitter.com/Astrostic/status/336087169171066881
Henry Barnes (Guardian, UK)   4    http://www.guardian.co.uk/film/2013/may/19/cannes-2013-tip-top-review

"L'ESCALE (Stop-over)" (Kaveh Bakhtiari) [Quinzaine]
José Luis Losa       4.5
Carlo Chatrian        6.5
Robert Koehler        3.5
Dana Linssen          5.5
Javier H. Estrada     5
# 
Blake Williams        3.9     https://twitter.com/Astrostic/status/336124896327397377

"EL VERANO DE LOS PECES VOLADORES (The Summer of Flying Fish)" (Marcela Said) [Quinzaine]
Roger Koza            6.5
Diego Lerer           7
Eulàlia Iglesias     6.5
Robert Koehler        4.5
Pamela Bienzobas      6.5

"LES GARÇONS ET GUILLAUME, À TABLE ! (Me Myself and Mum)" (Guillaume Gallienne) [Quinzaine] Art Cinema Award + Prix SACD
Carlo Chatrian        4
Robert Koehler        6.5
#
Arnaud Hée            5
Beatrice Moreno               http://www.rue89.com/rue89-culture/2013/05/23/les-garcons-guillaume-a-table-comedie-jubilatoire-lannee-242606
Danielle Attali       8       http://www.lejdd.fr/Culture/Cinema/Actualite/Guillaume-Gallienne-remet-le-couvert-607989
Franck Nouchi (Le Monde, France)    http://www.lemonde.fr/festival-de-cannes-2013/article/2013/05/21/les-garcons-et-guillaume-a-table-guillaume-gallienne-un-luron-moins-gay-qu-il-n-y-parait_3408916_1832090.html
Olivier Séguret (Liberation, France) http://next.liberation.fr/cinema/2013/05/20/gallienne-a-la-colle-maternelle_904360
Laurent Delmas               http://www.franceinter.fr/blog-le-blog-de-laurent-delmas-itineraire-dun-enfant-pas-gay

"THE LAST DAYS ON MARS" (Ruairí Robinson) [Quinzaine]
Kieron Corless        4.5
Robert Koehler        4.5
Javier H. Estrada     2.5
Arnaud Hée            2.5       

"A STRANGE COURSE OF EVENTS" (Raphaël Nadjari) [Quinzaine]
José Luis Losa       2
Robert Koehler        1.5
Javier H. Estrada     4

"WE ARE WHAT WE ARE" (Jim Mickle) [Quinzaine]
  (Sundance Midnight)
Eric Kohn            9.1      http://www.indiewire.com/article/review_survival_of_the_trimmest_mexican_cannibalism_as_metaphor_in_we_are_w/
Keith Uhlich         2        http://newyork.timeout.com/arts-culture/film/924889/we-are-what-we-are
Tim Grierson (Screen Daily, USA)   http://www.screendaily.com/reviews/the-latest/we-are-what-we-are/5055835.article?blocktitle=DIRECTORS'-FORTNIGHT&contentID=40446
#
Eulàlia Iglesias     6.5
Ángel Quintana       6.5
José Luis Losa       3
Dana Linssen          3.5
Javier H. Estrada     4.5
#
Ben Kenigsberg               http://www.rogerebert.com/cannes/cannes-yacht-parties-faulkner-and-cannibal-families

"ATÉ VER A LUZ" (Basil da Cunha) [Quinzaine]
Kieron Corless        5
Jaime Pena            5.5
Robert Koehler        7
Paolo Moretti         5
Javier H. Estrada     4
Blake Williams         5.5     https://twitter.com/Astrostic/status/337127683970441216

"LES APACHES" (Thierry de Peretti) [Quinzaine]
Javier H. Estrada     6.5
Blake Williams         4.3     https://twitter.com/Astrostic/status/337172984945049602

"LA FILLE DU 14 JUILLET (The Rendez-Vous of Déjà-Vu)" (Antonin Peretjatko) [Quinzaine]
Fernando Ganzo        8.5
Kieron Corless        2.5
Carlo Chatrian        5
Jaime Pena            7.5
Robert Koehler        3
Javier H. Estrada     8.5
Alvaro Arroba         8.5
#
Arnaud Hée            5  

"MAGIC MAGIC" (Sebastián Silva) [Quinzaine]
  (Sundance)
Carlo Chatrian        4.5
Carlos F. Heredero    2
Robert Koehler        2
Carlos Reviriego      5
Fernando Juan Lima    5.5
Philip Engel          6.5
Alejandro G. Calvo    5
Guido Castillo        2
Javier H. Estrada     3
Pamela Bienzobas      3.5
Fredy Friedlander     1
#
Sebastian Doggart     6       http://www.guardian.co.uk/film/2013/jan/25/magic-magic-first-look-review
Russ Fischer (slashfilm.com, USA) 7
Chris Bumbray (joblo.com, USA)    7
Mark Olsen (LA Times, USA) http://articles.latimes.com/2013/jan/27/entertainment/la-et-mn-sundance-michael-cera-magic-20130126
Nicolas Bell (Ioncinema.com, Canada) http://www.ioncinema.com/reviews/magic-magic-review
Clementine Gallot    6       http://www.indiewire.com/film/magic-magic
Ethan Anderton       3       http://www.indiewire.com/film/magic-magic
Don Simpson          8       http://www.indiewire.com/film/magic-magic
Joe Bendel           4       http://www.indiewire.com/film/magic-magic
Eric Kohn            4       http://www.indiewire.com/film/magic-magic
Arnaud Hée           2.5     

"ON THE JOB" (Erik Matti) [Quinzaine]
Neil Young            6.5
Javier H. Estrada     6
Michael Kienzl       7.5

"HENRI" (Yolande Moreau) [Quinzaine]
Diego Batlle          4.5
Diego Lerer           5
Neil Young            5

EOF

our @critics;
$critics[0] = "
Alejandro G. Calvo (Sensacine, España) 
Alex Vicente (Público, España) 
Alexandra Zawia (Wiener Zeitung, Furche, Celluloid, Austria)
Ángel Quintana (Cahiers du cinema Espana, España)
Antoine Thirion (Cinema Scope, ex-Cahiers du cinéma, France)
Boris Nelepo (Kinote daily, Russia)
Carlo Chatrian (Duellanti, Panoramiches, Italy) 
Carlos Heredero (Caimán CDC, España) 
Carlos Reviriego (elcultural.es y de Caiman. Cuadernos de cine, España) 
Cecilia Martinez (A Sala Llena Online, Argentina) 
Cristina Nord (Die Tageszeitung, Deutschland) 
Dana Linssen (De Filmkrant, Netherlands) 
Diego Batlle (La Nación, OtrosCines, Argentina) 
Diego Lerer (Clarín, Micropsia, Argentina) 
Eugenio Renzi (Independencia, France) 
Eulàlia Iglesias (RockDeLux y Caimán CDC, España) 
Fernando Ganzo (Lumiere, España) 
Fernando Juan Lima (El Amante, Argentina) 
Francisco Ferreira (Expresso, Portugal) 
Jaime Pena (El Amante, España, Argentina) 
Jose Luis De Lorenzo (A Sala Llena, Argentina) 
José Luis Losa (Cineuropa, España)
Kieron Corless (Time Out London, UK)
Luciano Barisone (Duellanti/Panoramiche, Italy) 
Luciano Monteagudo (Página/12, Argentina) 
Marcelo Alderete (Festival de Mar del Plata, Argentina) 
Michal Oleszczyk (Hammer to Nail, USA)
Nando Salva (El Periódico, España) 
Neil Young (Hollywood Reporter, Tribune, UK) 
Pablo O. Scholz (Clarín, Argentina)
Paolo Bertolin (Venice International Film Festival, Italy) 
Paolo Moretti (Italy) 
Pedro Butcher (Folha do Sao Paulo, Filme B, Brazil) 
Philip Engel (Go Mag, España) 
Robert Koehler (Variety, USA) 
Roger Alan Koza (La Voz del Interior, Con los ojos abiertos, Argentina) 
Roger Koza (La Voz del Interior, Con los ojos abiertos, Argentina) 
Rüdiger Suchsland (FAZ, Negativ-film, Deutschland) 
Scott Foundas (Film Comment, USA) 
Violeta Kovacsics (Caimán Cuadernos de Cine, España) 
Javier H. Estrada (Caimán CDC, España) 
Pamela Bienzobas (Mabuse, Chile) 
Xavi Serra (Ara, España) 
Guido Castillo (Freelance, España)
Ronald Rovers (Cinema.nl, Netherlands)
Alvaro Arroba (Cinema Scope, España)
Fredy Friedlander (Leedor.com, Argentina) http://www.leedor.com/contenidos/cine/66o-festival-de-cannes
";
# ioncinema
$critics[1] = "
Nicolas Bell (Ioncinema.com, Canada)
Christophe Beney (Palmares magazine, France) 
David Calhoun (Time Out London, UK) 
Per Juul Carlsen (Danish National Radio, Denmark) 
Mike d'Angelo (AV Club, USA) 
Carlos F. Heredero (Cahiers du cinema Espana, España) 
Raffi Asdourian (The FilmStage.com, USA)
Eric Kohn (Indiewire, USA) 
Eric Lavallée (Ioncinema.com, Canada) 
Fabien Lemercier (Cineeuropa.org, Belgium) 
Guy Lodge (Variety, InContention, South Africa, USA) 
Liu Min (Sina.com, China) 
Isabelle Regnier (Le Monde, France) 
Cédric Succivalli (International Cinephil Society, France) 
Clarence Tsui (South China Morning Post, Hong Kong) 
Blake Williams (Ioncinema.com, Canada) 
";
# Le film français 0-4
$critics[2] = "
Stéphanie Lamome (Premiere, France)
Arnaud Schwartz (la Croix, France)
Fabrice Leclerc (Studio ciné live, France)
Eric Neuhoff (Le Figaro, France)
Stéphane Delorme (Cahiers du cinema, France)
Thomas Sotinel (Le Monde, France)
Philippe Rouyer (Positif, France)
Pierre Vavasseur (le Parisien, France)
Pierre Murat (Telerama, France)
Jean Roy (l'Humanite, France)
Serge Kaganski (Les Inrockuptibles, France)
Pierre Fornerod (oeust france, France)
Pascal Merigeau (Observateur, France)
Danielle Attali (Le Journal du Dimanche, France)
Christophe Carriére (L'Express, France)
";
# screen daily 0-4
# http://issuu.com/emap_/docs/screen_cannes_day_1_2013
$critics[3] = "
Nick James (Sight & Sound, UK) 
David Stratton (The Australian, Australia) 
Derek Malcolm (London Evening, UK) 
Jan Schulz-Ojala (Der Tagesspiegel, Deutschland) 
Jose Carlos Avellar (Escrevercinema.com, Brazil) 
Dennis Lim (New York Times, USA)
Michel Ciment (Positif, France) 
Kate Muir/Wendy Ide (The Times, UK) 
Kate Muir (The Times, UK) 
Wendy Ide (The Times, UK) 
Bo Green Jensen (Weekandavisen Berlingske, Denmark) 
Screen International (Screen International, USA) 
";
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
$critics[4] = "
Adam Cook (MUBI, USA)
Arnaud Hée (Critikat.com, France)
Christoph Huber (Die Presse, Austria)
Frédéric Jaeger (critic.de, Deutschland)
Till Kadritzke (critic.de, Deutschland)
Daniel Kasman (MUBI, USA)
Michael Kienzl (critic.de, Deutschland)
";
# indiewire + various other
$critics[5] = "
A.A. Dowd (Time Out Chicago, USA)
Aaron Hillis (GreenCine Daily, USA)
Adam Batty (Hope Lies at 24 Frames Per Second, UK)
Alex Billington (FirstShowing.net, USA)
Allan Hunter (Screen Daily, USA)
Allison Loring (Film School Rejects, USA)
Andrei Creţulescu (HBO, Romania) 
Andrew O'Hehir (Salon.com, USA) 
Anna Bielak (Smells Like Screen Spirit, USA)
Anna Tatarska (Fandor, KINO, USA)
Anne Thompson (Indiewire, USA) 
Beatrice Behn (Kino-Zeit, Deutschland)
Boyd van Hoeij (The Hollywood Reporter, Winq/Mate, Filmkrant, Cineuropa, Ex-Variety, Luxembourg)
Brian Brooks (indieWIRE, USA) 
Caryn James (indieWIRE, ex-New York Times, USA)
Catherine Shoard (Guardian, UK)
Chris Knipp (Filmleaf, USA)
Clementine Gallot (Cahiers du cinema, France)
Craig Skinner (Craig Skinner on Film, HeyUGuys, BleedingCool, UK)
Craig Williams (Cine Vue, UK)
David Edelstein (New York Magazine-Vulture, USA)
David Ehrlich (Movies.com, Box Office Magazine, Reverse Shot)
David Fear (Time Out New York, USA) 
David Gritten (The Telegraph, UK)
David Jenkins (Little White Lies blog, UK)
David Sterrit (Tikkun Magazine, USA)
Don Simpson (Smells Like Screen Spirit, USA)
Drew McWeeny (InContention, USA)
Drew Taylor (The Playlist, USA)
Eduardo Valente (Revista Cinema, Brazil) 
Elisabeth Quin (Paris Premiere, France) 
Emanuel Levy (EmanuelLevy.com, USA)
Eric D. Snider (Film.com, USA)
Ethan Anderton (FirstShowing.net, USA)
Eugene Hernandez (Film Society of Lincoln Center, USA) 
Fico Cangiano (CineXpress, Puerto Rico)
Frédéric Jaeger (critic.de, Deutschland)
Glenn Heath Jr (Slant Magazine, Press Play, USA)
Ignatiy Vishnevetsky (Freelance, USA)
James Rocchi (MSN Movies, Indiewire's The Playlist, USA) 
Jessica Kiang (The Playlist, USA)
Jo Ann Titmarsh (FlickeringMyth.com, UK)
Joachim Kurz (Kino-Zeit, Deutschland)
Joe Bendel (Libertas Film Magazine, The Epoch Times, USA)
John Bleasdale (Cine Vue, UK)
Jon Frosch (France 24, France)
Jonathan Rosenbaum (Chicago Reader, USA) 
Jordan Hoffman (Film.com, ScreenCrush.com, Badass Digest, USA)
Jordan Raup (The Film Stage, USA)
Justin Chang (Variety, USA)
Kaleen Aftab (The Independent, UK)
Karina Longworth (LA Weekly, USA) 
Keith Uhlich (Time Out New York, USA)
Kevin Jagernauth (Indiewire's The Playlist, USA) 
Kirk Honeycott (The Hollywood Reporter, USA)
Kristy Puchko (Freelance, USA)
Laremy Legel (Film.com, USA) 
Leda Galanou (Flix, France)
Lee Marshall (Screen Daily, USA)
Logan Hill (Vulture, New York Times, This American Life, WSJ, Rolling Stone, Wired, GQ, USA)
Mahnola Dargis (New York Times, USA)
Marc van de Klashorst (IntlCinephileSociety, Netherlands)
Mark Adams (Screen Daily, USA)
Mathilde Cesbron (Le Figaro, France)
Matt Holmes (Obsessedwithfilm.com, USA) 
Maxime Pargaud (Le Figaro, France)
Michael Ghennam (Les Fiches du Cinéma, France)
Michael Giltz (The Huffington Post, USA) 
Michael Sennhauser (SRF, Suisse)
Nev Pierce (Empire, USA)
Patrick Heidmann (Cineman, Deutschland)
Patrick McGavin (Light Sensitive, Stop Smiling, The Nation, USA)
Paul Martin (Indies Movies Online, USA) 
Pete Hammond (Boxoffice Magazine, USA) 
Peter Bradshaw (Guardian, UK) 
Peter Debruge (Variety, USA) 
Peter Howell (The Toronto Star, USA) 
Peter Keogh (Boston Phoenix, USA)
Peter Knegt (indieWIRE, USA) 
Raffi Asdourian (The Film Stage, USA)
Richard Corliss (Time, USA)
Robbie Collins (The Telegraph, UK)
Robert Gassaway (The Flicksation Podcast, USA)
Rodrigo Perez (The Playlist, USA)
Ruta Buciunaite (theupcoming.co.uk, UK)
Ryland Aldrich (Twitch Film, USA)
Sebastian Doggart (Guardian, UK)
Shaun Munro (filmschoolrejects.com, USA)
Simon Abrams (The Playlist, USA)
Simon Gallagher (filmschoolrejects.com, UK) 
Simon Reynolds (Digital Spy, UK) 
Stephen Garrett (Time Out New York, USA)
Sukhdev Sandhu (Telegraph, UK) 
Tim Grierson (Screen International, L.A. Weekly, USA) 
Tim Robey (Daily Telegraph, England)
Todd McCarthy (The Hollywood Reporter, USA) 
Xan Brooks (Guardian, UK)
Yair Raveh (Cinema Scope, Israel)
";
# former apichatpoll members
$critics[6] = "
Arthur Mas (Independencia, France) 
Camille Brunel (Independencia, France) 
Gabriele Barrera (Segnocinema, Duellanti, Blow Up, Best Movie, Italy) 
Gonzalo de Pedro (Caimán, CDC, España) 
Kong Rithdee (The Bangkok Post, Thailand) 
Manu Yáñez (Fotogramas, OtrosCines, España) 
Martial Pisani (Independencia, France) 
Noémie Luciani (Independencia, France) 
Olivier Père (Les Inrockuptibles, France) 
Sergio Wolf (BAFICI, Argentina) 
Thomas Fioretti (Independencia, France) 
";

our $HEADER = <<"EOF";

<small>Collected and updated daily by Reini Urban, 
from the ApichatPoll http://www.todaslascriticas.com.ar/cannes (Diego Lerer+Javier Fish) (la crema),
http://www.ioncinema.com/ (okay),
Le film français (eclectic),
http://jury.critic.de/cannes/ (german),
Screen Daily (US/UK mainstream),
Indiewire (mixed) and more critics.<br>

<br>
<b>Ratings</b>:<br>
0-10 points, only &gt;6.00 avg and &gt;3 international critics [avg/num stddev].<br>
Critics with stddev &gt;2.5: filtered out
<i>(Filtered to help with inaccuracies with low numbers).</i><br>
<b>Formatting</b>:<br>
stddev &gt;2: <i>controversial (italic)</i>.<br>
&lt;10 ratings: small.<br>
Competition: <b>bold</b><br>
 <br>
All sections updated daily. </small><p>

EOF

our $FOOTER = "
<pre>
--
Source & History:
https://github.com/rurban/cannes-rurban.rhcloud.com/blob/master/openshift/lib/Cannes/rurban/2013.pm

</pre>";

$HEADER =~ s{(https?)://(.+?) }{<a href="$1://$2">$2</a> }g;
$FOOTER =~ s{(https?)://(.+)\n}{<a href="$1://$2">$2</a>\n}g;
1;
