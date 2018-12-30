//
//  ENAppContentModel.m
//  LCEnlightenment
//
//  Created by Liana Chu on 9/10/15.
//  Copyright (c) 2015 Liana Chu. All rights reserved.
//

#import "ENAppContentModel.h"

@implementation ENAppContentModel

-(id)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup
{
    NSMutableArray *tableOfContentsArray = [[NSMutableArray alloc] init];
    
    //**********Latest Teachings************
     NSMutableArray *latestTeachingsArray = [[NSMutableArray alloc] init];
     
     [self addENDocumentWithTitle:@"Teaching from 11/26/2006"
                    description:@""
                       filename:@"11262006"
                         parent:latestTeachingsArray
                          index:0];
     [self addENDocumentWithTitle:@"Teaching from 12/10/2006"
                         description:@""
                         filename:@"12102006"
                         parent:latestTeachingsArray
                         index:1];
     [self addENDocumentWithTitle:@"Teaching from 12/17/2006"
                         description:@""
                         filename:@"12172006"
                         parent:latestTeachingsArray
                         index:2];
     [self addENDocumentWithTitle:@"Teaching from 12/24/2006"
                         description:@""
                         filename:@"12242006"
                         parent:latestTeachingsArray
                         index:3];
     [self addENDocumentWithTitle:@"Teaching from 2/25/2007"
                         description:@""
                         filename:@"02252007"
                         parent:latestTeachingsArray
                         index:4];
     [self addENDocumentWithTitle:@"Teaching from 3/4/2007"
                         description:@""
                         filename:@"03042007"
                         parent:latestTeachingsArray
                         index:5];
    ENList *latestTeachingsENList = [self addENDocumentENListWithTitle:@"Latest Teachings"
                                                                  description:@""
                                                                      section:@"teaching" 
                                                                        index:0];
    latestTeachingsENList.array = [latestTeachingsArray copy];
    [tableOfContentsArray addObject:latestTeachingsENList];
    
    //*********Q&A Section***********
    NSMutableArray *qAndASectionArray = [[NSMutableArray alloc] init];
    NSMutableArray *questionsOneToTwentyArray = [[NSMutableArray alloc] init];
    
    [self addENDocumentWithTitle:@"Q1 - From Steve"
                   description:@"11/13/2005"
                      filename:@"steve"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/steve.htm"
                        parent:questionsOneToTwentyArray
                         index:0];
    
    [self addENDocumentWithTitle:@"Q2 - From Santosh"
                   description:@"11/14/2005"
                      filename:@"santosh"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/santosh.htm"
                        parent:questionsOneToTwentyArray
                         index:1];
    
    [self addENDocumentWithTitle:@"Q3 - From Marcello"
                   description:@"11/16/2005"
                      filename:@"marcello"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/marcello.htm"
                        parent:questionsOneToTwentyArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Q4 - From Michael"
                   description:@"11/26/2005"
                      filename:@"michael"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/michael.htm"
                        parent:questionsOneToTwentyArray
                         index:3];
    
    [self addENDocumentWithTitle:@"Q5 - From Jenny"
                   description:@"12/15/2005"
                      filename:@"jenny"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/jenny.htm"
                        parent:questionsOneToTwentyArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Q6 - From Indrajit"
                   description:@"4/10/2006"
                      filename:@"indrajit"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/indrajit.htm"
                        parent:questionsOneToTwentyArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Q7 - From Peter"
                   description:@"4/21/2006"
                      filename:@"peter"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/peter.htm"
                        parent:questionsOneToTwentyArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Q8 - From Barbara"
                   description:@"5/3/2006"
                      filename:@"barbara"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/barbara.htm"
                        parent:questionsOneToTwentyArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Q9 - From Vivian"
                   description:@"6/7/2006"
                      filename:@"vivian"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/vivian.htm"
                        parent:questionsOneToTwentyArray
                         index:8];
    
    [self addENDocumentWithTitle:@"Q10 - From Vanessa"
                   description:@"7/25/2006"
                      filename:@"vanessa"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/vanessa.htm"
                        parent:questionsOneToTwentyArray
                         index:9];
    
    [self addENDocumentWithTitle:@"Q11 - From Nexarius"
                   description:@"7/31/2006"
                      filename:@"nexarius"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/nexarius.htm"
                        parent:questionsOneToTwentyArray
                         index:10];
    
    [self addENDocumentWithTitle:@"Q12 - From Somnath"
                   description:@"8/2/2006"
                      filename:@"somnath"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/somnath.htm"
                        parent:questionsOneToTwentyArray
                         index:11];
    
    [self addENDocumentWithTitle:@"Q13 - From Pradeep"
                   description:@"8/6/2006"
                      filename:@"pradeep"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/pradeep.htm"
                        parent:questionsOneToTwentyArray
                         index:12];
    
    [self addENDocumentWithTitle:@"Q14 - From Dave Cote"
                   description:@"8/19/2006"
                      filename:@"dave_cote"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/dave_cote.htm"
                        parent:questionsOneToTwentyArray
                         index:13];
    
    [self addENDocumentWithTitle:@"Q15 - From Karen"
                   description:@"8/20/2006"
                      filename:@"karen"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/karen.htm"
                        parent:questionsOneToTwentyArray
                         index:14];
    
    [self addENDocumentWithTitle:@"Q16 - From Sean"
                   description:@"8/21/2006" 
                      filename:@"sean" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/sean.htm" 
                        parent:questionsOneToTwentyArray
                         index:15];
    
    [self addENDocumentWithTitle:@"Q17 - From Cacohen" 
                   description:@"8/24/2006" 
                      filename:@"cacohen" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/cacohen.htm" 
                        parent:questionsOneToTwentyArray
                         index:16];
    
    [self addENDocumentWithTitle:@"Q18 - From Shailendra" 
                   description:@"8/29/2006" 
                      filename:@"shailendra" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/shailendra.htm" 
                        parent:questionsOneToTwentyArray
                         index:17];
    
    [self addENDocumentWithTitle:@"Q19 - From Tom" 
                   description:@"8/29/2006" 
                      filename:@"tom" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/tom.htm" 
                        parent:questionsOneToTwentyArray
                         index:18];
    
    [self addENDocumentWithTitle:@"Q20 - From Cindy" 
                   description:@"9/4/2006" 
                      filename:@"cindy" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/cindy.htm" 
                        parent:questionsOneToTwentyArray
                         index:19];

    
    [self addENDocumentENListWithTitle:@"Questions 1 - 20"
                       description:@"11/13/2005 - 9/4/2006"
                           section:@"1-20"
                             index:0];
    
    ENList *questionsOneToTwentyENList = [self addENDocumentENListWithTitle:@"Questions 1 - 20"
                                                        description:@"11/13/2005 - 9/4/2006"
                                                            section:@"1-20"
                                                              index:0];
    questionsOneToTwentyENList.array = [questionsOneToTwentyArray copy];
    
    NSMutableArray *questionsTwentyOneToFortyArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"Q21 - From R Kondur"
                   description:@"9/24/2006"
                      filename:@"r_kondur"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/r_kondur.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:0];
    
    [self addENDocumentWithTitle:@"Q22 - From Ying"
                   description:@"10/26/2006"
                      filename:@"ying"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/ying.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:1];
    
    [self addENDocumentWithTitle:@"Q23 - From Jan"
                   description:@"10/28/2006"
                      filename:@"jan"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/jan.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Q24 - From Steve"
                   description:@"11/23/2006"
                      filename:@"steve2"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/steve2.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:3];
    
    [self addENDocumentWithTitle:@"Q25 - From Edward"
                   description:@"11/29/2006"
                      filename:@"edward"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/edward.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Q26 - From Wadine"
                   description:@"11/30/2006"
                      filename:@"wadine"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/wadine.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Q27 - From Pol Shappy"
                   description:@"12/8/2006"
                      filename:@"pol_shappy"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/pol_shappy.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Q28 - From John"
                   description:@"12/29/2006"
                      filename:@"john"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/john.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Q29 - From Richard"
                   description:@"12/30/2006"
                      filename:@"richard"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/richard.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:8];
    
    [self addENDocumentWithTitle:@"Q30 - From Neil"
                   description:@"1/7/2007"
                      filename:@"neil"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/neil.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:9];
    
    [self addENDocumentWithTitle:@"Q31 - From Robert"
                   description:@"1/9/2007"
                      filename:@"robert"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/robert.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:10];
    
    [self addENDocumentWithTitle:@"Q32 - From Bryan"
                   description:@"1/11/2007"
                      filename:@"bryan"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/bryan.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:11];
    
    [self addENDocumentWithTitle:@"Q33 - From Bob"
                   description:@"1/12/2007"
                      filename:@"bob"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/bob.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:12];
    
    [self addENDocumentWithTitle:@"Q34 - From Sandhya"
                   description:@"1/13/2007"
                      filename:@"sandhya"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/sandhya.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:13];
    
    [self addENDocumentWithTitle:@"Q35 - From Stanley"
                   description:@"1/20/2007"
                      filename:@"stanely"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/stanely.htm"
                        parent:questionsTwentyOneToFortyArray
                         index:14];
    
    [self addENDocumentWithTitle:@"Q36 - From Craig" 
                   description:@"2/22/2007" 
                      filename:@"craig" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/craig.htm" 
                        parent:questionsTwentyOneToFortyArray
                         index:15];
    
    [self addENDocumentWithTitle:@"Q37 - From Shaun" 
                   description:@"3/2/2007" 
                      filename:@"shaun" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/shaun.htm" 
                        parent:questionsTwentyOneToFortyArray
                         index:16];
    
    [self addENDocumentWithTitle:@"Q38 - From Rani" 
                   description:@"3/2/2007" 
                      filename:@"rani" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/rani.htm" 
                        parent:questionsTwentyOneToFortyArray
                         index:17];
    
    [self addENDocumentWithTitle:@"Q39 - From Leon" 
                   description:@"3/4/2007" 
                      filename:@"leon" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/leon.htm" 
                        parent:questionsTwentyOneToFortyArray
                         index:18];
    
    [self addENDocumentWithTitle:@"Q40 - From Bruce" 
                   description:@"3/10/2007" 
                      filename:@"bruce" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/bruce.htm" 
                        parent:questionsTwentyOneToFortyArray
                         index:19];
    ENList *questionsTwentyOneToFortyENList = [self addENDocumentENListWithTitle:@"Questions 21 - 40"
                                                             description:@"9/24/2006 - 3/10/2007"
                                                                 section:@"21-40" 
                                                                   index:1];
    questionsTwentyOneToFortyENList.array = [questionsTwentyOneToFortyArray copy];
    
    NSMutableArray *questionsFortyOneToSixtyArray = [[NSMutableArray alloc] init];
    
    [self addENDocumentWithTitle:@"Q41 - From Dan"
                   description:@"3/12/2007"
                      filename:@"dan"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/dan.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:0];
    
    [self addENDocumentWithTitle:@"Q42 - From RS Champagne"
                   description:@"3/16/2007"
                      filename:@"rs_champagne"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/rs_champagne.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:1];
    
    [self addENDocumentWithTitle:@"Q43 - From Kong KC"
                   description:@"3/18/2007"
                      filename:@"kongkc"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/kongkc.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Q44 - From Matt Hewitt"
                   description:@"3/21/2007"
                      filename:@"matt_hewitt"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/matt_hewitt.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:3];
    
    [self addENDocumentWithTitle:@"Q45 - From J Van Aardt"
                   description:@"3/24/2007"
                      filename:@"jvanaardt"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/jvanaardt.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Q46 - From Keith Butler"
                   description:@"3/24/2007"
                      filename:@"keith"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/keith.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Q47 - From Steve"
                   description:@"3/26/2007"
                      filename:@"steve3"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/steve3.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Q48 - From Toto"
                   description:@"3/29/2007"
                      filename:@"toto"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/toto.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Q49 - From Ing"
                   description:@"4/3/2007"
                      filename:@"ing"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/ing.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:8];
    
    [self addENDocumentWithTitle:@"Q50 - From Ishaqui"
                   description:@"4/3/2007"
                      filename:@"ishaqui"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/ishaqui.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:9];
    
    [self addENDocumentWithTitle:@"Q51 - From Marios"
                   description:@"4/5/2007"
                      filename:@"marios"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/marios.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:10];
    
    [self addENDocumentWithTitle:@"Q52 - From Nitin"
                   description:@"4/9/2007"
                      filename:@"nitin"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/nitin.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:11];
    
    [self addENDocumentWithTitle:@"Q53 - From Christopher Sambo"
                   description:@"4/1/2007"
                      filename:@"christopher_sambo"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/christopher_sambo.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:12];
    
    [self addENDocumentWithTitle:@"Q54 - From Michael"
                   description:@"4/16/2007"
                      filename:@"michael80"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/michael80.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:13];
    
    [self addENDocumentWithTitle:@"Q55 - From Joe"
                   description:@"4/17/2007"
                      filename:@"joe"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/joe.htm"
                        parent:questionsFortyOneToSixtyArray
                         index:14];
    
    [self addENDocumentWithTitle:@"Q56 - From JK"
                   description:@"4/24/2007" 
                      filename:@"jk" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/jk.htm" 
                        parent:questionsFortyOneToSixtyArray
                         index:15];
    
    [self addENDocumentWithTitle:@"Q57 - From James Ling" 
                   description:@"4/27/2007" 
                      filename:@"james_ling" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/james_ling.htm" 
                        parent:questionsFortyOneToSixtyArray
                         index:16];
    
    [self addENDocumentWithTitle:@"Q58 - From LRL Gupta" 
                   description:@"4/30/2007" 
                      filename:@"lrl_gupta" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/lrl_gupta.htm" 
                        parent:questionsFortyOneToSixtyArray
                         index:17];
    
    [self addENDocumentWithTitle:@"Q59 - From George K" 
                   description:@"5/5/2007" 
                      filename:@"george_k" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/george_k.htm" 
                        parent:questionsFortyOneToSixtyArray
                         index:18];
    
    [self addENDocumentWithTitle:@"Q60 - From Leo" 
                   description:@"5/7/2007" 
                      filename:@"leo" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/leo.htm" 
                        parent:questionsFortyOneToSixtyArray
                         index:19];
    
    ENList *questionsFortyOneToSixtyENList = [self addENDocumentENListWithTitle:@"Questions 41 - 60"
                                                            description:@"3/13/2007 - 5/7/2007"
                                                                section:@"41-60"
                                                                  index:2];
    
    questionsFortyOneToSixtyENList.array = [questionsFortyOneToSixtyArray copy];
    
    NSMutableArray *questionsSixtyOneToEightyArray = [[NSMutableArray alloc] init];
    
    [self addENDocumentWithTitle:@"Q61 - From Anele"
                   description:@"5/24/2007"
                      filename:@"anele"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/anele.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:0];
    
    [self addENDocumentWithTitle:@"Q62 - From Zihao"
                   description:@"5/24/2007"
                      filename:@"zihao"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/zihao.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:1];
    
    [self addENDocumentWithTitle:@"Q63 - From Simon"
                   description:@"6/3/2007"
                      filename:@"simon"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/simon.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Q64 - From Gordon"
                   description:@"6/3/2007"
                      filename:@"gordon"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/gordon.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:3];
    
    [self addENDocumentWithTitle:@"Q65 - From Cherry"
                   description:@"6/9/2007"
                      filename:@"cherry"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/cherry.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Q66 - From Mir Mehmood"
                   description:@"6/12/2007"
                      filename:@"mir_mehmood"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/mir_mehmood.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Q67 - From Henry"
                   description:@"6/17/2007"
                      filename:@"henry"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/henry.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Q68 - From Ron"
                   description:@"6/20/2007"
                      filename:@"ron"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/ron.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Q69 - From Kim"
                   description:@"7/4/2007"
                      filename:@"kim"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/kim.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:8];
    
    [self addENDocumentWithTitle:@"Q70 - From Jerry"
                   description:@"7/4/2007"
                      filename:@"jerry"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/jerry.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:9];
    
    [self addENDocumentWithTitle:@"Q71 - From Vinod"
                   description:@"7/8/2007"
                      filename:@"vinod"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/vinod.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:10];
    
    [self addENDocumentWithTitle:@"Q72 - From Cri"
                   description:@"7/11/2007"
                      filename:@"cri"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/cri.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:11];
    
    [self addENDocumentWithTitle:@"Q73 - From AP"
                   description:@"7/29/2007"
                      filename:@"ap"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/ap.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:12];
    
    [self addENDocumentWithTitle:@"Q74 - From Kyle"
                   description:@"7/30/2007"
                      filename:@"kyle"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/kyle.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:13];
    
    [self addENDocumentWithTitle:@"Q75 - From Peter"
                   description:@"7/30/2007"
                      filename:@"peterae"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/peterae.htm"
                        parent:questionsSixtyOneToEightyArray
                         index:14];
    
    [self addENDocumentWithTitle:@"Q76 - From Charan Singh"
                   description:@"8/1/2007" 
                      filename:@"charan_singh" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/charan_singh.htm" 
                        parent:questionsSixtyOneToEightyArray
                         index:15];
    
    [self addENDocumentWithTitle:@"Q77 - From Clay" 
                   description:@"8/20/2007" 
                      filename:@"clay" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/clay.htm" 
                        parent:questionsSixtyOneToEightyArray
                         index:16];
    
    [self addENDocumentWithTitle:@"Q78 - From Ingmar" 
                   description:@"8/21/2007" 
                      filename:@"ingmar" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/ingmar.htm" 
                        parent:questionsSixtyOneToEightyArray
                         index:17];
    
    [self addENDocumentWithTitle:@"Q79 - From Pamela" 
                   description:@"8/30/2007" 
                      filename:@"pamela" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/pamela.htm" 
                        parent:questionsSixtyOneToEightyArray
                         index:18];
    
    [self addENDocumentWithTitle:@"Q80 - From Xi" 
                   description:@"9/7/2007" 
                      filename:@"xi" 
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/xi.htm" 
                        parent:questionsSixtyOneToEightyArray
                         index:19];
    
    ENList *questionsSixtyOneToEightyENList = [self addENDocumentENListWithTitle:@"Questions 61 - 80"
                                                             description:@"5/24/2007 - 9/7/2007"
                                                                 section:@"61-80" 
                                                                   index:3];
    
    questionsSixtyOneToEightyENList.array = [questionsSixtyOneToEightyArray copy];
    
    NSMutableArray *questionsEightyOneToOneHundredArray = [[NSMutableArray alloc] init];
    
    [self addENDocumentWithTitle:@"Q81 - From Brenda"
                   description:@"9/12/2007"
                      filename:@"brenda"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/brenda.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:0];
    
    [self addENDocumentWithTitle:@"Q82 - From V"
                   description:@"9/15/2007"
                      filename:@"v"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/v.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:1];
    
    [self addENDocumentWithTitle:@"Q83 - From Karloze"
                   description:@"11/6/2007"
                      filename:@"karloze"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/karloze.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Q84 - From Sean"
                   description:@"11/21/2007"
                      filename:@"seanb6"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/seanb6.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:3];
    
    [self addENDocumentWithTitle:@"Q85 - From SWP"
                   description:@"11/22/2007"
                      filename:@"swp"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/swp.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Q86 - From Pravin"
                   description:@"11/24/2007"
                      filename:@"pravin"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/pravin.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Q87 - From Frank"
                   description:@"11/25/2007"
                      filename:@"frank"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/frank.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Q88 - From Indu"
                   description:@"12/2/2007"
                      filename:@"indu"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/indu.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Q89 - From Joyce"
                   description:@"12/6/2007"
                      filename:@"joyce"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/joyce.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:8];
    
    [self addENDocumentWithTitle:@"Q90 - From LK"
                   description:@"12/10/2007"
                      filename:@"lk"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/lk.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:9];
    
    [self addENDocumentWithTitle:@"Q91 - From D"
                   description:@"12/12/2007"
                      filename:@"d"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/d.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:10];
    
    [self addENDocumentWithTitle:@"Q92 - From Daniel"
                   description:@"12/17/2007"
                      filename:@"daniel"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/daniel.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:11];
    
    [self addENDocumentWithTitle:@"Q93 - From Mark"
                   description:@"12/22/2007"
                      filename:@"mark"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/mark.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:12];
    
    [self addENDocumentWithTitle:@"Q94 - From Fatos"
                   description:@"12/22/2007"
                      filename:@"fatos"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/fatos.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:13];
    
    [self addENDocumentWithTitle:@"Q95 - From Dr. Lopez"
                   description:@"12/23/2007"
                      filename:@"lopez"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/lopez.htm"
                        parent:questionsEightyOneToOneHundredArray
                         index:14];
    
    [self addENDocumentWithTitle:@"Q96 - From Bap"
                   description:@"1/4/2008" 
                      filename:@"bap"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/bap.htm" 
                        parent:questionsEightyOneToOneHundredArray
                         index:15];
    
    [self addENDocumentWithTitle:@"Q97 - From Christophe" 
                   description:@"1/5/2008" 
                      filename:@"christophe"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/christophe.htm" 
                        parent:questionsEightyOneToOneHundredArray
                         index:16];
    
    [self addENDocumentWithTitle:@"Q98 - From David" 
                   description:@"1/6/2008" 
                      filename:@"david"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/david.htm" 
                        parent:questionsEightyOneToOneHundredArray
                         index:17];
    
    [self addENDocumentWithTitle:@"Q99 - From Nataliya" 
                   description:@"1/9/2008" 
                      filename:@"nataliya"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/nataliya.htm" 
                        parent:questionsEightyOneToOneHundredArray
                         index:18];
    
    [self addENDocumentWithTitle:@"Q100 - From Julia" 
                   description:@"1/8/2008" 
                      filename:@"julia"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/julia.htm" 
                        parent:questionsEightyOneToOneHundredArray
                         index:19];
    
    ENList *questionsEightyOneToOneHundredENList = [self addENDocumentENListWithTitle:@"Questions 81 - 100"
                                                                  description:@"9/12/2007 - 1/9/2008"
                                                                      section:@"81-100" 
                                                                        index:4];
    
    questionsEightyOneToOneHundredENList.array = [questionsEightyOneToOneHundredArray copy];
    
    NSMutableArray *questionsOneHundredOneToOneHundredTwentyArray = [[NSMutableArray alloc] init];
    
    [self addENDocumentWithTitle:@"Q101 - From Joyce Wright"
                   description:@"1/15/2008"
                      filename:@"joyce_wright"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/joyce_wright.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:0];
    
    [self addENDocumentWithTitle:@"Q102 - From Schibber"
                   description:@"1/18/2008"
                      filename:@"schibber"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/schibber.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:1];
    
    [self addENDocumentWithTitle:@"Q103 - From R E Greene"
                   description:@"1/21/2008"
                      filename:@"r_e_greene"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/r_e_greene.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Q104 - From Hubble"
                   description:@"1/24/2008"
                      filename:@"hubble"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/hubble.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:3];
    
    [self addENDocumentWithTitle:@"Q105 - From Pankaj Mittal"
                   description:@"1/28/2008"
                      filename:@"pankaj_mittal"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/pankaj_mittal.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Q106 - From Paul Klein"
                   description:@"2/10/2008"
                      filename:@"paul_klein"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/paul_klein.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Q107 - From Prasanta Nayak"
                   description:@"2/12/2008"
                      filename:@"prasanta_nayak"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/prasanta_nayak.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Q108 - From Nick Jimison"
                   description:@"2/13/2008"
                      filename:@"nick_jimison"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/nick_jimison.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Q109 - From Alex"
                   description:@"2/14/2008"
                      filename:@"alex"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/alex.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:8];
    
    [self addENDocumentWithTitle:@"Q110 - From Mahiralok"
                   description:@"2/16/2008"
                      filename:@"mahiralok"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/mahiralok.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:9];
    
    [self addENDocumentWithTitle:@"Q111 - From Alvyjane"
                   description:@"2/18/2008"
                      filename:@"alvyjane"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/alvyjane.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:10];
    
    [self addENDocumentWithTitle:@"Q112 - From Michael"
                   description:@"2/21/2008"
                      filename:@"michaeld5"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:11];
    
    [self addENDocumentWithTitle:@"Q113 - From Mark"
                   description:@"2/21/2008"
                      filename:@"markd6"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/markd6.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:12];
    
    [self addENDocumentWithTitle:@"Q114 - From Helen"
                   description:@"2/22/2008"
                      filename:@"helen"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/helen.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:13];
    
    [self addENDocumentWithTitle:@"Q115 - From Mav"
                   description:@"2/27/2008"
                      filename:@"mav"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/mav.htm"
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:14];
    
    [self addENDocumentWithTitle:@"Q116 - From Ganesan"
                   description:@"3/11/2008" 
                      filename:@"ganesan"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/ganesan.htm" 
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:15];
    
    [self addENDocumentWithTitle:@"Q117 - From Andy" 
                   description:@"3/16/2008" 
                      filename:@"andy"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/andy.htm" 
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:16];
    
    [self addENDocumentWithTitle:@"Q118 - From Gayatri" 
                   description:@"3/26/2008" 
                      filename:@"gayatri"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/gayatri.htm" 
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:17];
    
    [self addENDocumentWithTitle:@"Q119 - From Alex" 
                   description:@"3/26/2008" 
                      filename:@"alex2"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/alex2.htm" 
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:18];
    
    [self addENDocumentWithTitle:@"Q120 - From Eric" 
                   description:@"8/7/2008" 
                      filename:@"eric"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/eric.htm" 
                        parent:questionsOneHundredOneToOneHundredTwentyArray
                         index:19];
    
    ENList *questionsOneHundredOneToOneHundredTwentyENList = [self addENDocumentENListWithTitle:@"Questions 101 - 120"
                                                                             description:@"1/15/2008 - 9/7/2008"
                                                                                 section:@"101-120" 
                                                                                   index:5];
    
    questionsOneHundredOneToOneHundredTwentyENList.array = [questionsOneHundredOneToOneHundredTwentyArray copy];
    
    NSMutableArray *questionsOneHundredTwentyOneToOneHundredFortyArray = [[NSMutableArray alloc] init];
    
    [self addENDocumentWithTitle:@"Q121 - From Cat"
                   description:@"4/10/2008"
                      filename:@"cat"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/cat.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:0];
    
    [self addENDocumentWithTitle:@"Q122 - From Randy"
                   description:@"4/24/2008"
                      filename:@"randy"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/randy.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:1];
    
    [self addENDocumentWithTitle:@"Q123 - From Majid"
                   description:@"4/20/2008"
                      filename:@"majid"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/majid.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Q124 - From Mike"
                   description:@"4/20/2008"
                      filename:@"mike"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/mike.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:3];
    
    [self addENDocumentWithTitle:@"Q125 - From Matthew"
                   description:@"4/15/2008"
                      filename:@"matthew"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/matthew.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Q126 - From Eric"
                   description:@"4/23/2008"
                      filename:@"eric2"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/eric2.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Q127 - From Tarsem"
                   description:@"4/24/2008"
                      filename:@"tarsem"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/tarsem.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Q128 - From Simon"
                   description:@"4/25/2008"
                      filename:@"simonea"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/simonea.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Q129 - From Jamie"
                   description:@"5/6/2008"
                      filename:@"jamie"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/jamie.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:8];
    
    [self addENDocumentWithTitle:@"Q130 - From Chip"
                   description:@"5/19/2008"
                      filename:@"chip"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/chip.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:9];
    
    [self addENDocumentWithTitle:@"Q131 - From Joe"
                   description:@"5/21/2008"
                      filename:@"joeeb"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/joeeb.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:10];
    
    [self addENDocumentWithTitle:@"Q132 - From Ian"
                   description:@"5/22/2008"
                      filename:@"ian"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:11];
    
    [self addENDocumentWithTitle:@"Q133 - From Balaji"
                   description:@"6/3/2008"
                      filename:@"balaji"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/balaji.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:12];
    
    [self addENDocumentWithTitle:@"Q134 - From Upasna"
                   description:@"6/4/2008"
                      filename:@"upasna"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/upasna.htm"
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:13];
    
    [self addENDocumentWithTitle:@"Q135 - From Andrew" 
                   description:@"6/10/2008" 
                      filename:@"andrewb"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/andrewb.htm" 
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:14];
    
    [self addENDocumentWithTitle:@"Q136 - From Erki" 
                   description:@"6/16/2008" 
                      filename:@"erki"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/erki.htm" 
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:15];
    
    [self addENDocumentWithTitle:@"Q137 - From Jason N" 
                   description:@"6/17/2008" 
                      filename:@"jasonn"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/jasonn.htm" 
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:16];
    
    [self addENDocumentWithTitle:@"Q138 - From Arvind" 
                   description:@"7/18/2008" 
                      filename:@"arvind"
                     sourceURL:@"http://www.members.tripod.com/tathagata2000/arvind.htm" 
                        parent:questionsOneHundredTwentyOneToOneHundredFortyArray
                         index:17];
    
    ENList *questionsOneHundredTwentyOneToOneHundredFortyENList = [self addENDocumentENListWithTitle:@"Questions 121 - 140"
                                                                                 description:@"4/10/2008 - 7/18/2008"
                                                                                     section:@"121-140" 
                                                                                       index:6];
    
    questionsOneHundredTwentyOneToOneHundredFortyENList.array = [questionsOneHundredTwentyOneToOneHundredFortyArray copy];
    

    
    
    ENList *qAndASectionENList = [self addENListENListWithTitle:@"Questions & Answers"
                                             description:@""
                                                 section:@"qa"
                                                   index:1];
    
    [qAndASectionArray addObject:questionsOneToTwentyENList];
    [qAndASectionArray addObject:questionsTwentyOneToFortyENList];
    [qAndASectionArray addObject:questionsFortyOneToSixtyENList];
    [qAndASectionArray addObject:questionsSixtyOneToEightyENList];
    [qAndASectionArray addObject:questionsEightyOneToOneHundredENList];
    [qAndASectionArray addObject:questionsOneHundredOneToOneHundredTwentyENList];
    [qAndASectionArray addObject:questionsOneHundredTwentyOneToOneHundredFortyENList];

    qAndASectionENList.array = [qAndASectionArray copy];
    [tableOfContentsArray addObject:qAndASectionENList];
    
    
    //***********Articles And Teachings **********
    NSMutableArray *articlesAndTeachingsArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"What is Karma ?"
                   description:@"Cause and Effect of Karma"
                      filename:@"karma"
                        parent:articlesAndTeachingsArray
                         index:0];
    [self addENDocumentWithTitle:@"What is Destiny ?"
                   description:@"How Can We Change Our Destiny?"
                      filename:@"destiny"
                        parent:articlesAndTeachingsArray
                         index:1];
    [self addENDocumentWithTitle:@"What is Life ?"
                   description:@"The Process from Birth until Death"
                      filename:@"life"
                        parent:articlesAndTeachingsArray
                         index:2];
    [self addENDocumentWithTitle:@"Happiness and Peace"
                   description:@"How can we get Happiness and Peace?"
                      filename:@"happiness_and_peace"
                        parent:articlesAndTeachingsArray
                         index:3];
    [self addENDocumentWithTitle:@"Messages from Tathagata"
                   description:@"The End of the World / Changing Period / Eschatology"
                      filename:@"messages" 
                        parent:articlesAndTeachingsArray
                         index:4];
    [self addENDocumentWithTitle:@"Teaching of Tathagata" 
                   description:@"The Truth" 
                      filename:@"teaching" 
                        parent:articlesAndTeachingsArray
                         index:5];
    ENList *articlesAndTeachingsENList = [self addENDocumentENListWithTitle:@"Articles & Teachings"
                                                                              description:@""
                                                                                  section:@"articles" 
                                                                                    index:2];
    articlesAndTeachingsENList.array = [articlesAndTeachingsArray copy];
    [tableOfContentsArray addObject:articlesAndTeachingsENList];
    
    //****************About Tathagata************
    
    NSMutableArray *aboutTathagataArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"The Life of Tathagata"
                   description:@"Appearance of the Enlightened Being"
                      filename:@"appearance"
                        parent:aboutTathagataArray
                         index:0];
    [self addENDocumentWithTitle:@"Tathagata's Struggle"
                   description:@"Ordeals Through Enlightenment"
                      filename:@"struggle"
                        parent:aboutTathagataArray
                         index:1];
    [self addENDocumentWithTitle:@"Enlightenment of Tathagata"
                   description:@"Tathagata's Love for Mankind" 
                      filename:@"love" 
                        parent:aboutTathagataArray
                         index:2];
    ENList *aboutTathagataENList = [self addENDocumentENListWithTitle:@"About Tathagata"
                                                                                   description:@""
                                                                                       section:@"about" 
                                                                                         index:3];
    aboutTathagataENList.array = [aboutTathagataArray copy];
    [tableOfContentsArray addObject:aboutTathagataENList];
    
    
    //*********Traveler**************
    NSMutableArray *publicationsArray = [[NSMutableArray alloc] init];
    NSMutableArray *travelerArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"Ch 1. Dearest wish"
                   description:@"There was no place to dedicate conscience and courage again/In front of the man who has lived in the suffering./The solitary song of the man who had to walk along a lonely way,/Because of love toward the fatherland, has passed by burning young heart."
                      filename:@"traveler_1"
                        parent:travelerArray
                         index:0];
    [self addENDocumentWithTitle:@"Ch 2. Forgotten time"
                   description:@"Where should I meet the true world./I did not have the place to ask it./I would rather have wished/The dark time was dream."
                      filename:@"traveler_2"
                        parent:travelerArray
                         index:1];
    [self addENDocumentWithTitle:@"Ch 3. Story of Yeon-hwa island"
                   description:@"An innocent man had to see a sin/Was heaven's meaning./Because there was no place to hide his mind,/He who had to confine himself to a solitary island/Lamented as following."
                      filename:@"traveler_3"
                        parent:travelerArray
                         index:2];
    [self addENDocumentWithTitle:@"Ch 4. Sound of heaven"
                   description:@"New world appeared in my calm mind./I saw myself/Who did not have anguish nor fantasy./THe sound of heaven was heard/in my lonely heart."
                      filename:@"traveler_4"
                        parent:travelerArray
                         index:3];
    [self addENDocumentWithTitle:@"Ch 5. Traveler"
                   description:@"Heaven made me burdened./Nobody could bear that burden instead of me./So I had to wander about the world again."
                      filename:@"traveler_5"
                        parent:travelerArray
                         index:4];
    [self addENDocumentWithTitle:@"Ch 6. A grain of seed"
                   description:@"Soyeon./This is the first name/That I gave for the world./After having given this name,/I told her all my secrets."
                      filename:@"traveler_6"
                        parent:travelerArray
                         index:5];
    [self addENDocumentWithTitle:@"Ch 7. Lamentation"
                   description:@"This is the song/That I used to sing,/Having seen myself who has no place to go and to stay./Heaven, let me find a rightous man today./And let the new world be theirs by them."
                      filename:@"traveler_7"
                        parent:travelerArray
                         index:6];
    [self addENDocumentWithTitle:@"Ch 8. Law of cause and effect"
                   description:@"The law of cause and effect is the eternal promise that exists in our world./We call this promise truth./I will tell things of the world by this law."
                      filename:@"traveler_8"
                        parent:travelerArray
                         index:7];
    [self addENDocumentWithTitle:@"Ch 9. Questions and answers"
                   description:@"There is something we can not believe in the world./However, as time goes by, people come to know such a thing./And then it is clear that truth and falsehood can be proved in a fact."
                      filename:@"traveler_9" 
                        parent:travelerArray
                         index:8];
    [self addENDocumentWithTitle:@"Ch 10. History of tathagata" 
                   description:@"Truth exists forever./If apples do not look like apples,/If apples do not have the taste of those,/We can not call them apples." 
                      filename:@"traveler_10" 
                        parent:travelerArray
                         index:9];
    
    
    ENList *travelerENList = [self addENDocumentENListWithTitle:@"Traveler"
                                                     description:@"Poetry"
                                                         section:@"traveler"
                                                           index:0];
    
    travelerENList.array = [travelerArray copy];
    
    ENList *publicationsENList = [self addENListENListWithTitle:@"Publications"
                                                                              description:@""
                                                                                  section:@"publications" 
                                                                                    index:4];
    
    
    [publicationsArray addObject:travelerENList];
    
    //****Tathagata's book Enlightenment***
    NSMutableArray *enlightenmentArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"Introduction to Enlightenment"
                   description:@""
                      filename:@"intro_enlightenment"
                        parent:enlightenmentArray
                         index:0];
    [self addENDocumentWithTitle:@"Five Doubts"
                   description:@""
                      filename:@"five_doubts"
                        parent:enlightenmentArray
                         index:1];
    [self addENDocumentWithTitle:@"Questions and Answers"
                   description:@""
                      filename:@"enlightenment_qa"
                        parent:enlightenmentArray
                         index:2];
    [self addENDocumentWithTitle:@"Main Contents of the Lectures" 
                   description:@"" 
                      filename:@"subjects" 
                        parent:enlightenmentArray
                         index:3];
    ENList *enlightenmentENList = [self addENDocumentENListWithTitle:@"Enlightenment"
                                    description:@"Tathagata's book Enlightenment"
                                        section:@"enlightenment"
                                          index:1];
    enlightenmentENList.array = [enlightenmentArray copy];
    [publicationsArray addObject:enlightenmentENList];
    
    //*****Voices of Nature***
    NSMutableArray *voicesOfNatureArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 1"
                   description:@""
                      filename:@"voices1"
                     sourceURL:@"http://natureteaching.com/teaching/1ho/voice1.htm"
                        parent:voicesOfNatureArray
                         index:0];
    
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 2"
                   description:@""
                      filename:@"voices2"
                     sourceURL:@"http://natureteaching.com/teaching/2ho/voice2.htm"
                        parent:voicesOfNatureArray
                         index:1];
    
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 3"
                   description:@""
                      filename:@"voices3"
                     sourceURL:@"http://natureteaching.com/teaching/3ho/voice3.htm"
                        parent:voicesOfNatureArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 4"
                   description:@""
                      filename:@"voices4"
                     sourceURL:@"http://natureteaching.com/teaching/4ho/voice4.htm"
                        parent:voicesOfNatureArray
                         index:3];
    
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 5"
                   description:@""
                      filename:@"voices5"
                     sourceURL:@"http://natureteaching.com/teaching/5ho/voice5.htm"
                        parent:voicesOfNatureArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 6"
                   description:@""
                      filename:@"voices6"
                     sourceURL:@"http://natureteaching.com/teaching/6ho/voice6.htm"
                        parent:voicesOfNatureArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 7"
                   description:@""
                      filename:@"voices7"
                     sourceURL:@"http://natureteaching.com/teaching/7ho/voice7.htm"
                        parent:voicesOfNatureArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 8" 
                   description:@"" 
                      filename:@"voices8" 
                     sourceURL:@"http://natureteaching.com/teaching/8ho/voice8.htm" 
                        parent:voicesOfNatureArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Voices of Nature Ch. 9" 
                   description:@"" 
                      filename:@"voices9" 
                     sourceURL:@"http://natureteaching.com/teaching/9ho/voice9.htm" 
                        parent:voicesOfNatureArray
                         index:8];
    ENList *voicesOfNatureENList = [self addENDocumentENListWithTitle:@"Voices of Nature"
                                                  description:@"Published in Nature's Teaching Magazine"
                                                      section:@"voices"
                                                        index:2];
    voicesOfNatureENList.array = [voicesOfNatureArray copy];
    [publicationsArray addObject:voicesOfNatureENList];
    
    //****Lonely struggle****
    [self addENDocumentWithTitle:@"Lonely Struggle"
                   description:@"not yet translated"
                      filename:nil
                     sourceURL:nil
                        parent:publicationsArray
                         index:4];
    //lonelyStruggleENList has no content to display so I will make it a document instead of a list.
    
    publicationsENList.array = [publicationsArray copy];

    [tableOfContentsArray addObject:publicationsENList];
    
    
    //***********Lectures**********
    NSMutableArray *lecturesArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"Places of Lecture"
                   description:@""
                      filename:@"places"
                        parent:lecturesArray
                         index:0];
    [self addENDocumentWithTitle:@"Main Subjects of the Lectures"
                   description:@""
                      filename:@"subjects"
                        parent:lecturesArray
                         index:1];
    [self addENDocumentWithTitle:@"The Way of Enlightenment"
                   description:@""
                      filename:@"way_of_enlightenment"
                        parent:lecturesArray
                         index:2];
    [self addENDocumentWithTitle:@"The World of Life"
                   description:@""
                      filename:@"world_of_life"
                        parent:lecturesArray
                         index:3];
    [self addENDocumentWithTitle:@"Human Beings and God"
                   description:@"" 
                      filename:@"human_being_and_god" 
                        parent:lecturesArray
                         index:4];
    [self addENDocumentWithTitle:@"The Earth Seen Through Science" 
                   description:@"" 
                      filename:@"earth" 
                        parent:lecturesArray
                         index:5];
    ENList *lecturesENList = [self addENDocumentENListWithTitle:@"Lectures"
                                                                  description:@""
                                                                      section:@"lectures" 
                                                                        index:5];
    lecturesENList.array = [lecturesArray copy];
    [tableOfContentsArray addObject:lecturesENList];
    
    //******Travel Notes******
    NSMutableArray *travelNotesArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"People met in Nairobi"
                   description:@"Nairobi, Kenya"
                      filename:@"nairobi"
                        parent:travelNotesArray
                         index:0];
    [self addENDocumentWithTitle:@"Pune University"
                   description:@"Pune, Maharashtra, India"
                      filename:@"pune"
                        parent:travelNotesArray
                         index:1];
    [self addENDocumentWithTitle:@"Travel to Bodh Gaya"
                   description:@"Bodh Gaya, Bihar, India"
                      filename:@"bodh_gaya"
                        parent:travelNotesArray
                         index:2];
    [self addENDocumentWithTitle:@"Indian Institute of Technology"
                   description:@"New Delhi, India"
                      filename:@"iit"
                        parent:travelNotesArray
                         index:3];
    [self addENDocumentWithTitle:@"Leicester Square" 
                   description:@"London, UK" 
                      filename:@"leicester_square" 
                        parent:travelNotesArray
                         index:4];
    ENList *travelNotesENList = [self addENDocumentENListWithTitle:@"Travel Notes"
                                                                     description:@""
                                                                         section:@"travel" 
                                                                           index:6];
    travelNotesENList.array = [travelNotesArray copy];
    [tableOfContentsArray addObject:travelNotesENList];
    
    NSMutableArray *conversationsArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"Seongbon, the First King’s teacher in Thailand"
                   description:@"Thailand"
                      filename:@"convo_1"
                        parent:conversationsArray
                         index:0];
    
    [self addENDocumentWithTitle:@"With contemporary leader, Buddhadhasa of Thailand Buddhism"
                   description:@"Thailand"
                      filename:@"convo_2"
                        parent:conversationsArray
                         index:1];
    
    [self addENDocumentWithTitle:@"With contemporary Indian leader, J. P. Vaswani"
                   description:@"India"
                      filename:@"convo_3"
                        parent:conversationsArray
                         index:2];
    
    [self addENDocumentWithTitle:@"Agwani (The contemporary president of Nehru university)"
                   description:@"India"
                      filename:@"convo_4"
                        parent:conversationsArray
                         index:3];
    
    [self addENDocumentWithTitle:@"The words with leader of Tibet Buddhism, Tenshav Rinpoche"
                   description:@" "
                      filename:@"convo_5"
                        parent:conversationsArray
                         index:4];
    
    [self addENDocumentWithTitle:@"Meeting with Mr. Gupte, the contemporary President of Buna University in Buna"
                   description:@"India"
                      filename:@"convo_6"
                        parent:conversationsArray
                         index:5];
    
    [self addENDocumentWithTitle:@"Meeting with Hindu Shankaracharya in Puna"
                   description:@"India"
                      filename:@"convo_7"
                        parent:conversationsArray
                         index:6];
    
    [self addENDocumentWithTitle:@"Meeting with professor Wanzala, the head of department in humanity college at the University of Nairobi, Kenya"
                   description:@"Kenya"
                      filename:@"convo_8"
                        parent:conversationsArray
                         index:7];
    
    [self addENDocumentWithTitle:@"Dialog with Philosopher Boyd in Budapest, Hungary"
                   description:@"Hungary"
                      filename:@"convo_9"
                        parent:conversationsArray
                         index:8];
    
    [self addENDocumentWithTitle:@"Dialog with doctor Giryeo Jang in Busan"
                   description:@"South Korea"
                      filename:@"convo_10"
                        parent:conversationsArray
                         index:9];
    
    [self addENDocumentWithTitle:@"Samwon Rinpoche, The president of University of Tibetan Buddhism, Saranad"
                   description:@" "
                      filename:@"convo_11"
                        parent:conversationsArray
                         index:10];
    
    [self addENDocumentWithTitle:@"Open lecture at IIT, India"
                   description:@"India"
                      filename:@"convo_12"
                        parent:conversationsArray
                         index:11];
    
    [self addENDocumentWithTitle:@"At Gandhi University, India" 
                   description:@"India" 
                      filename:@"convo_13" 
                        parent:conversationsArray
                         index:12]; 
    
    [self addENDocumentWithTitle:@"At University of Delhi, India" 
                   description:@"India" 
                      filename:@"convo_14" 
                        parent:conversationsArray
                         index:13]; 
    
    [self addENDocumentWithTitle:@"Hindu University, Banarashi India" 
                   description:@"India" 
                      filename:@"convo_15" 
                        parent:conversationsArray
                         index:14]; 
    
    [self addENDocumentWithTitle:@"Oxford University, U.K" 
                   description:@"U.K" 
                      filename:@"convo_16" 
                        parent:conversationsArray
                         index:15];
    
    [self addENDocumentWithTitle:@"Imperial college, University of London, U.K" 
                   description:@"U.K" 
                      filename:@"convo_17" 
                        parent:conversationsArray
                         index:16];
    ENList *conversationsENList = [self addENDocumentENListWithTitle:@"Conversations"
                                                                       description:@""
                                                                           section:@"conversations" 
                                                                             index:7];
    conversationsENList.array = [conversationsArray copy];
    [tableOfContentsArray addObject:conversationsENList];
    
    //********Photo Gallery****
    ENList *imagesForGalleryENList = [self addENListENListWithTitle:@"Photos of Tathagata"
                                                description:@""
                                                    section:@"images"
                                                      index:8];
    
    [tableOfContentsArray addObject:imagesForGalleryENList];
    
    //*********Links*********
    NSMutableArray *linksArray = [[NSMutableArray alloc] init];
    [self addENDocumentWithTitle:@"members.tripod.com/tathagata2000"
                     description:@"Website with Tathagata's teachings in English, made by Paul Iddon in London."
                        filename:@"http://members.tripod.com/tathagata2000"
                          parent:linksArray
                           index:0];
    [self addENDocumentWithTitle:@"www.lifeguide.or.kr"
                     description:@"Tathagata in Korea."
                        filename:@"http://www.lifeguide.or.kr"
                          parent:linksArray
                           index:1];
    [self addENDocumentWithTitle:@"www.natureteaching.com"
                     description:@"A magazine published by members in Korea."
                        filename:@"http://www.natureteaching.com"
                          parent:linksArray
                           index:2];
    [self addENDocumentWithTitle:@"www.snasc.com"
                     description:@"Founded by Mr. Samhan Lee in 1986. The purpose of its foundation is to conduct research on problems of mankind and the solutions of problems in society."
                        filename:@"http://www.snasc.com"
                          parent:linksArray
                           index:3];
    [self addENDocumentWithTitle:@"silsang.co.kr/"
                     description:@""
                        filename:@"http://silsang.co.kr/"
                          parent:linksArray
                           index:4];
    [self addENDocumentWithTitle:@"www.naturalscience.biz/" description:@"" filename:@"http://www.naturalscience.biz/" parent:linksArray index:5];
    
    [self addENDocumentWithTitle:@"www.tathagata.info/" description:@"" filename:@"http://www.tathagata.info/" parent: linksArray index:6];
    
    [self addENDocumentWithTitle:@"tathagatablog.wordpress.com/" description:@"Blog about Tathagata and his teachings with translations by Craig."  filename:@"https://tathagatablog.wordpress.com/" parent:linksArray index:7];
    
    ENList *linksENList = [self addENDocumentENListWithTitle:@"Links" description:@"" section:@"links" index:8];
    linksENList.array = [linksArray copy];
    [tableOfContentsArray addObject:linksENList];
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    tableOfContentsArray = [tableOfContentsArray copy];
    ENList *tableOfContentsENList = [[ENList alloc] init];
    tableOfContentsENList.title = @"Contents";
    tableOfContentsENList.array = tableOfContentsArray;
    self.tableOfContentsENList = tableOfContentsENList;
}




-(void) addENDocumentWithTitle:(NSString *)title description:(id)description filename:(id)filename sourceURL:(id)sourceURL parent:(id)parent index:(int)index     {
    
    ENDocument *document = [[ENDocument alloc] init];
    document.title = title;
    document.filename = filename;
    document.detailText = description;
    document.index = [NSNumber numberWithInt:index];
    document.parent = parent;
    document.sourceURL = sourceURL;
    
    if (parent) {
        [parent addObject:document];
    }
}

-(void) addENDocumentWithTitle:(NSString *)title description:(id)description filename:(id)filename parent:(id)parent index:(int)index; {
    
    [self addENDocumentWithTitle:title description:description filename:filename sourceURL:nil parent:parent index:index];
}

-(ENList *) addENDocumentENListWithTitle:(id)title
                                description:(id)description
                                    section:(id)section
                                      index:(int)index {
    
    ENList *list = [[ENList alloc] init];
    
    list.title = title;
    list.detailText = description;
    list.index = [NSNumber numberWithInt:index];
    list.section = section;
    
    return list;
}

-(ENList *) addENListENListWithTitle:(id)title
                        description:(id)description
                            section:(id)section
                              index:(int)index {
    ENList *list = [[ENList alloc] init];
    
    list.title = title;
    list.detailText = description;
    list.index = [NSNumber numberWithInt:index];
    list.section = section;
    
    return list;

}

@end
