.class public Lcom/liquable/nemo/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/IntroActivity$MyGestureListener;
    }
.end annotation


# instance fields
.field private autoPlayIntro:Z

.field private backImage:Landroid/widget/ImageView;

.field private currentIntroIndex:I

.field private descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

.field private final descriptionsOfIntro:[I

.field private fadeDuration:I

.field private frontImage:Landroid/widget/ImageView;

.field private imagesToShow:[I

.field private final imagesToShowLarge:[I

.field private final imagesToShowSmall:[I

.field private pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

.field private startTime:J

.field private textAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

.field private titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

.field private final titlesOfIntro:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/IntroActivity;->autoPlayIntro:Z

    .line 45
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/liquable/nemo/IntroActivity;->fadeDuration:I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/liquable/nemo/IntroActivity;->imagesToShowLarge:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/liquable/nemo/IntroActivity;->imagesToShowSmall:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/liquable/nemo/IntroActivity;->titlesOfIntro:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/liquable/nemo/IntroActivity;->descriptionsOfIntro:[I

    return-void

    .line 57
    :array_0
    .array-data 4
        0x7f020476
        0x7f020478
        0x7f02047a
        0x7f02047c
    .end array-data

    .line 59
    :array_1
    .array-data 4
        0x7f020477
        0x7f020479
        0x7f02047b
        0x7f02047d
    .end array-data

    .line 61
    :array_2
    .array-data 4
        0x7f0d02fb
        0x7f0d02fd
        0x7f0d02ff
        0x7f0d0301
    .end array-data

    .line 63
    :array_3
    .array-data 4
        0x7f0d02fa
        0x7f0d02fc
        0x7f0d02fe
        0x7f0d0300
    .end array-data
.end method

.method static synthetic access$000(Lcom/liquable/nemo/IntroActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/IntroActivity;->swipeRight()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/IntroActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/IntroActivity;->swipeLeft()V

    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/IntroActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/liquable/nemo/IntroActivity;->autoPlayIntro:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/liquable/nemo/IntroActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/liquable/nemo/IntroActivity;->autoPlayIntro:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/IntroActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/liquable/nemo/IntroActivity;->animate(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/IntroActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/IntroActivity;->demoIntro()V

    return-void
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/IntroActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/liquable/nemo/IntroActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/IntroActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity;->titlesOfIntro:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/IntroActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/IntroActivity;)Lcom/liquable/nemo/widget/AutoResizeTextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity;->titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/IntroActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity;->descriptionsOfIntro:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/IntroActivity;)Lcom/liquable/nemo/widget/AutoResizeTextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity;->descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/IntroActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/liquable/nemo/IntroActivity;->fadeDuration:I

    return v0
.end method

.method static synthetic access$702(Lcom/liquable/nemo/IntroActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/liquable/nemo/IntroActivity;->fadeDuration:I

    return p1
.end method

.method static synthetic access$802(Lcom/liquable/nemo/IntroActivity;Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;
    .param p1, "x1"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lcom/liquable/nemo/IntroActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity;->backImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animate(I)V
    .locals 11
    .param p1, "toNext"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 68
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    if-eqz v5, :cond_1

    .line 69
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->end()V

    .line 70
    iput-object v6, p0, Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .line 71
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->textAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    if-eqz v5, :cond_0

    .line 72
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->textAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->end()V

    .line 74
    :cond_0
    iput-object v6, p0, Lcom/liquable/nemo/IntroActivity;->textAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .line 77
    :cond_1
    iget v5, p0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    array-length v6, v6

    rem-int v3, v5, v6

    .line 78
    .local v3, "nextIndex":I
    if-gez v3, :cond_2

    .line 79
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    array-length v5, v5

    add-int/2addr v3, v5

    .line 81
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->backImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->backImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    iget v7, p0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iput v3, p0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    .line 85
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->frontImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    iget v7, p0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    new-instance v5, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .line 88
    new-instance v5, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/liquable/nemo/IntroActivity;->textAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .line 90
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->frontImage:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 91
    .local v2, "frontImageFadeIn":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    iget v5, p0, Lcom/liquable/nemo/IntroActivity;->fadeDuration:I

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 92
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->backImage:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 93
    .local v0, "backImageFadeOut":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    iget v5, p0, Lcom/liquable/nemo/IntroActivity;->fadeDuration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 95
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    .line 96
    .local v4, "titleTextFadeOut":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 100
    .local v1, "descriptionTextFadeOut":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    iget v5, p0, Lcom/liquable/nemo/IntroActivity;->fadeDuration:I

    div-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 101
    iget v5, p0, Lcom/liquable/nemo/IntroActivity;->fadeDuration:I

    div-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 103
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->textAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    new-array v6, v8, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    aput-object v4, v6, v9

    aput-object v1, v6, v10

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 104
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    new-array v6, v8, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    aput-object v2, v6, v9

    aput-object v0, v6, v10

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 106
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->textAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    new-instance v6, Lcom/liquable/nemo/IntroActivity$1;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/IntroActivity$1;-><init>(Lcom/liquable/nemo/IntroActivity;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 127
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    new-instance v6, Lcom/liquable/nemo/IntroActivity$2;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/IntroActivity$2;-><init>(Lcom/liquable/nemo/IntroActivity;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 135
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->textAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    .line 136
    iget-object v5, p0, Lcom/liquable/nemo/IntroActivity;->pageAnimationSet:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    .line 138
    return-void

    .line 90
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 95
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 96
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private demoIntro()V
    .locals 4

    .prologue
    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/IntroActivity$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/IntroActivity$3;-><init>(Lcom/liquable/nemo/IntroActivity;)V

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return-void
.end method

.method private setTop(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # I

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    return-void
.end method

.method private swipeLeft()V
    .locals 6

    .prologue
    .line 327
    iget v0, p0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    iget-object v1, p0, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 328
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "swipe"

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/liquable/nemo/IntroActivity;->startTime:J

    sub-long/2addr v2, v4

    .line 328
    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->leaveIntroduction(Ljava/lang/String;J)V

    .line 330
    invoke-virtual {p0}, Lcom/liquable/nemo/IntroActivity;->finish()V

    .line 332
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/liquable/nemo/IntroActivity;->animate(I)V

    .line 333
    return-void
.end method

.method private swipeRight()V
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/liquable/nemo/IntroActivity;->animate(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 6

    .prologue
    .line 154
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "back"

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/liquable/nemo/IntroActivity;->startTime:J

    sub-long/2addr v2, v4

    .line 154
    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->leaveIntroduction(Ljava/lang/String;J)V

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createInActivity(Landroid/app/Activity;)V

    .line 163
    const v22, 0x7f030035

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->setContentView(I)V

    .line 164
    const v22, 0x7f0800e1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/liquable/nemo/IntroActivity$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/IntroActivity$4;-><init>(Lcom/liquable/nemo/IntroActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v22, 0x7f0800df

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/IntroActivity;->titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41400000    # 12.0f

    invoke-virtual/range {v22 .. v23}, Lcom/liquable/nemo/widget/AutoResizeTextView;->setMinTextSize(F)V

    .line 175
    const v22, 0x7f0800e0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/IntroActivity;->descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41400000    # 12.0f

    invoke-virtual/range {v22 .. v23}, Lcom/liquable/nemo/widget/AutoResizeTextView;->setMinTextSize(F)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->titlesOfIntro:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    move/from16 v24, v0

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/liquable/nemo/widget/AutoResizeTextView;->setText(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->descriptionsOfIntro:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    move/from16 v24, v0

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/liquable/nemo/widget/AutoResizeTextView;->setText(I)V

    .line 180
    const v22, 0x7f0800dd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/IntroActivity;->backImage:Landroid/widget/ImageView;

    .line 181
    const v22, 0x7f0800de

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/IntroActivity;->frontImage:Landroid/widget/ImageView;

    .line 182
    const v22, 0x7f0800db

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 187
    .local v19, "shadow":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v22

    const/16 v23, 0x23f

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->imagesToShowLarge:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    .line 189
    const v22, 0x7f02047f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    const/16 v22, 0x1cc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v15

    .line 191
    .local v15, "phoneHeight":I
    const/16 v22, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v16

    .line 199
    .local v16, "phoneShadowOffset":I
    :goto_0
    const v22, 0x7f0800dc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 200
    .local v4, "bgView":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v18

    .line 201
    .local v18, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02047e

    invoke-static/range {v22 .. v23}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 202
    .local v8, "flower":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 204
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v22, v22, v18

    div-int/lit8 v22, v22, 0x2

    const/16 v23, 0x0

    .line 207
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    .line 203
    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-static {v8, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 208
    .local v6, "croppedFlower":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    .end local v6    # "croppedFlower":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->frontImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    move/from16 v24, v0

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/IntroActivity;->currentIntroIndex:I

    move/from16 v24, v0

    aget v23, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 220
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->frontImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    .local v14, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/util/DisplayMetrics;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->frontImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->backImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    const/16 v22, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v20

    .line 227
    .local v20, "titleHeight":I
    const/16 v22, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v7

    .line 228
    .local v7, "descHeight":I
    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v10

    .line 229
    .local v10, "gapTextPhone":I
    const/16 v22, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v9

    .line 230
    .local v9, "gapText":I
    add-int v22, v10, v20

    add-int v22, v22, v9

    add-int v22, v22, v7

    add-int v22, v22, v10

    add-int v21, v22, v15

    .line 235
    .local v21, "totalHeight":I
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v22

    const/16 v23, 0x19

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v23

    sub-int v17, v22, v23

    .line 236
    .local v17, "screenHeight":I
    sub-int v22, v17, v21

    div-int/lit8 v13, v22, 0x2

    .line 238
    .local v13, "marginTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->titleTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-object/from16 v22, v0

    add-int v23, v13, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/IntroActivity;->setTop(Landroid/view/View;I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->descriptionTextView:Lcom/liquable/nemo/widget/AutoResizeTextView;

    move-object/from16 v22, v0

    add-int v23, v13, v10

    add-int v23, v23, v20

    add-int v23, v23, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/IntroActivity;->setTop(Landroid/view/View;I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->backImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    add-int v23, v13, v10

    add-int v23, v23, v20

    add-int v23, v23, v9

    add-int v23, v23, v7

    add-int v23, v23, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/IntroActivity;->setTop(Landroid/view/View;I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->frontImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    add-int v23, v13, v10

    add-int v23, v23, v20

    add-int v23, v23, v9

    add-int v23, v23, v7

    add-int v23, v23, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/IntroActivity;->setTop(Landroid/view/View;I)V

    .line 242
    add-int v22, v13, v10

    add-int v22, v22, v20

    add-int v22, v22, v9

    add-int v22, v22, v7

    add-int v22, v22, v10

    sub-int v22, v22, v16

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/IntroActivity;->setTop(Landroid/view/View;I)V

    .line 249
    const v22, 0x7f0800da

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 250
    .local v11, "introLayout":Landroid/view/View;
    new-instance v12, Landroid/view/GestureDetector;

    new-instance v22, Lcom/liquable/nemo/IntroActivity$MyGestureListener;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/IntroActivity$MyGestureListener;-><init>(Lcom/liquable/nemo/IntroActivity;Lcom/liquable/nemo/IntroActivity$1;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 252
    .local v12, "mGestureListener":Landroid/view/GestureDetector;
    new-instance v22, Lcom/liquable/nemo/IntroActivity$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/liquable/nemo/IntroActivity$5;-><init>(Lcom/liquable/nemo/IntroActivity;Landroid/view/GestureDetector;)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/IntroActivity;->demoIntro()V

    .line 264
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enterIntroduction()V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/liquable/nemo/IntroActivity;->startTime:J

    .line 266
    return-void

    .line 193
    .end local v4    # "bgView":Landroid/widget/ImageView;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "descHeight":I
    .end local v8    # "flower":Landroid/graphics/Bitmap;
    .end local v9    # "gapText":I
    .end local v10    # "gapTextPhone":I
    .end local v11    # "introLayout":Landroid/view/View;
    .end local v12    # "mGestureListener":Landroid/view/GestureDetector;
    .end local v13    # "marginTop":I
    .end local v14    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v15    # "phoneHeight":I
    .end local v16    # "phoneShadowOffset":I
    .end local v17    # "screenHeight":I
    .end local v18    # "screenWidth":I
    .end local v20    # "titleHeight":I
    .end local v21    # "totalHeight":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/IntroActivity;->imagesToShowSmall:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/IntroActivity;->imagesToShow:[I

    .line 194
    const v22, 0x7f020480

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    const/16 v22, 0x172

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v15

    .line 196
    .restart local v15    # "phoneHeight":I
    const/16 v22, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v16

    .restart local v16    # "phoneShadowOffset":I
    goto/16 :goto_0

    .line 211
    .restart local v4    # "bgView":Landroid/widget/ImageView;
    .restart local v8    # "flower":Landroid/graphics/Bitmap;
    .restart local v18    # "screenWidth":I
    :cond_1
    if-eqz v8, :cond_2

    .line 212
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_2
    const v22, 0x7f02047e

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->destroyInActivity(Landroid/app/Activity;)V

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 272
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 277
    invoke-static {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->deactivateApp(Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->resumeSessionInActivity(Landroid/app/Activity;)V

    .line 284
    invoke-static {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->activateApp(Landroid/content/Context;)V

    .line 286
    invoke-virtual {p0}, Lcom/liquable/nemo/IntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 287
    .local v0, "target":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->refererFromFacebookUrl(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, "o":Ljava/lang/Object;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->retainNonConfigurationInstanceInActivity()V

    .line 305
    return-object v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->startSessionInActivity(Landroid/app/Activity;)V

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 312
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->endSessionInActivity(Landroid/app/Activity;)V

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 318
    return-void
.end method
