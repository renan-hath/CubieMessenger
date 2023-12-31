.class public Lcom/mixpanel/android/surveys/SurveyActivity;
.super Landroid/app/Activity;
.source "SurveyActivity.java"


# static fields
.field private static final GRAY_30PERCENT:I


# instance fields
.field private mCardHolder:Lcom/mixpanel/android/surveys/CardCarouselLayout;

.field private mCurrentQuestion:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mIntentId:I

.field private mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

.field private mNextButton:Landroid/view/View;

.field private mPreviousButton:Landroid/view/View;

.field private mProgressTextView:Landroid/widget/TextView;

.field private mSurveyBegun:Z

.field private mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x5a

    .line 518
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mixpanel/android/surveys/SurveyActivity;->GRAY_30PERCENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 511
    iput-boolean v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mSurveyBegun:Z

    .line 512
    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mIntentId:I

    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/surveys/SurveyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/SurveyActivity;

    .prologue
    .line 62
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mIntentId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mixpanel/android/surveys/SurveyActivity;Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/SurveyActivity;
    .param p1, "x1"    # Lcom/mixpanel/android/mpmetrics/Survey$Question;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/surveys/SurveyActivity;->saveAnswer(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mixpanel/android/surveys/SurveyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/SurveyActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    return-void
.end method

.method static synthetic access$302(Lcom/mixpanel/android/surveys/SurveyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/SurveyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mSurveyBegun:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mixpanel/android/surveys/SurveyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/SurveyActivity;

    .prologue
    .line 62
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    return v0
.end method

.method static synthetic access$500(Lcom/mixpanel/android/surveys/SurveyActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/SurveyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyActivity;->showQuestion(I)V

    return-void
.end method

.method private completeSurvey()V
    .locals 0

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 501
    return-void
.end method

.method private getSurveyState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDisplayState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    return-object v0
.end method

.method private goToNextQuestion()V
    .locals 4

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getSurveyState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v1

    .line 423
    .local v1, "surveyState":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->getSurvey()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/Survey;->getQuestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 424
    .local v0, "surveySize":I
    iget v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 425
    iget v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/mixpanel/android/surveys/SurveyActivity;->showQuestion(I)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V

    goto :goto_0
.end method

.method private goToPreviousQuestion()V
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    if-lez v0, :cond_0

    .line 415
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->showQuestion(I)V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V

    goto :goto_0
.end method

.method private isShowingInApp()Z
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDisplayState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "InAppNotificationState"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowingSurvey()Z
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDisplayState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SurveyState"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCreateInAppNotification(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    sget v4, Lcom/mixpanel/android/R$layout;->com_mixpanel_android_activity_notification_full:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->setContentView(I)V

    .line 87
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_gradient:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 88
    .local v14, "backgroundImage":Landroid/widget/ImageView;
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_image:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/mixpanel/android/surveys/FadingImageView;

    .line 89
    .local v23, "inAppImageView":Lcom/mixpanel/android/surveys/FadingImageView;
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 90
    .local v29, "titleView":Landroid/widget/TextView;
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_subtext:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 91
    .local v28, "subtextView":Landroid/widget/TextView;
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 92
    .local v16, "ctaButton":Landroid/widget/Button;
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_button_exit_wrapper:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 94
    .local v15, "closeButtonWrapper":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDisplayState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v24

    check-cast v24, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    .line 96
    .local v24, "notificationState":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;
    invoke-virtual/range {v24 .. v24}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;->getInAppNotification()Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v21

    .line 99
    .local v21, "inApp":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    .line 100
    .local v18, "display":Landroid/view/Display;
    new-instance v27, Landroid/graphics/Point;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Point;-><init>()V

    .line 101
    .local v27, "size":Landroid/graphics/Point;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 104
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    .local v25, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const v8, 0x3d75c28f    # 0.06f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .end local v25    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v20, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 113
    .local v20, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 115
    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 116
    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 122
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual/range {v21 .. v21}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual/range {v21 .. v21}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual/range {v21 .. v21}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getImage()Landroid/graphics/Bitmap;

    move-result-object v22

    .line 128
    .local v22, "inAppImage":Landroid/graphics/Bitmap;
    sget v4, Lcom/mixpanel/android/R$drawable;->com_mixpanel_android_square_dropshadow:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/FadingImageView;->setBackgroundResource(I)V

    .line 130
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_5

    .line 131
    :cond_1
    sget v4, Lcom/mixpanel/android/R$drawable;->com_mixpanel_android_square_nodropshadow:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/FadingImageView;->setBackgroundResource(I)V

    .line 141
    :cond_2
    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/surveys/FadingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual/range {v21 .. v21}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getCallToActionUrl()Ljava/lang/String;

    move-result-object v17

    .line 144
    .local v17, "ctaUrl":Ljava/lang/String;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 145
    invoke-virtual/range {v21 .. v21}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getCallToAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_3
    new-instance v4, Lcom/mixpanel/android/surveys/SurveyActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity$1;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;Lcom/mixpanel/android/mpmetrics/InAppNotification;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v4, Lcom/mixpanel/android/surveys/SurveyActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mixpanel/android/surveys/SurveyActivity$2;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    new-instance v4, Lcom/mixpanel/android/surveys/SurveyActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mixpanel/android/surveys/SurveyActivity$3;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 194
    .local v2, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 195
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/mixpanel/android/surveys/FadingImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 203
    .local v3, "translate":Landroid/view/animation/TranslateAnimation;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 205
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    sget v4, Lcom/mixpanel/android/R$anim;->com_mixpanel_android_fade_in:I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v19

    .line 210
    .local v19, "fadeIn":Landroid/view/animation/Animation;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    return-void

    .line 118
    .end local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v3    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v17    # "ctaUrl":Ljava/lang/String;
    .end local v19    # "fadeIn":Landroid/view/animation/Animation;
    .end local v22    # "inAppImage":Landroid/graphics/Bitmap;
    :cond_4
    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3ea8f5c3    # 0.33f

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 119
    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_0

    .line 133
    .restart local v22    # "inAppImage":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 134
    .local v26, "scaledImage":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    .line 135
    .local v13, "averageColor":I
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 137
    .local v12, "averageAlpha":I
    const/16 v4, 0xff

    if-ge v12, v4, :cond_2

    .line 138
    sget v4, Lcom/mixpanel/android/R$drawable;->com_mixpanel_android_square_nodropshadow:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/mixpanel/android/surveys/FadingImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 109
    :array_0
    .array-data 4
        -0x1a9f9f84
        -0x1ab7b7a3
        -0x1ae7e7e1
        -0x1ae7e7e1
    .end array-data
.end method

.method private onCreateSurvey(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->requestOrientationLock()V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    const-string/jumbo v4, "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    .line 218
    const-string/jumbo v4, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_BEGIN_BUNDLE_KEY"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mSurveyBegun:Z

    .line 221
    :cond_0
    iget-object v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDistinctId()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "answerDistinctId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 223
    const-string/jumbo v4, "MixpanelAPI SurveyActivity"

    const-string/jumbo v5, "Can\'t show a survey to a user with no distinct id set"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 249
    :goto_0
    return-void

    .line 228
    :cond_1
    sget v4, Lcom/mixpanel/android/R$layout;->com_mixpanel_android_activity_survey:I

    invoke-virtual {p0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->setContentView(I)V

    .line 230
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getSurveyState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v3

    .line 231
    .local v3, "surveyState":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    .local v1, "background":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 233
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_activity_survey_id:I

    invoke-virtual {p0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 234
    .local v2, "contentView":Landroid/view/View;
    sget v4, Lcom/mixpanel/android/surveys/SurveyActivity;->GRAY_30PERCENT:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    .end local v2    # "contentView":Landroid/view/View;
    :goto_1
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_button_previous:I

    invoke-virtual {p0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mPreviousButton:Landroid/view/View;

    .line 239
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_button_next:I

    invoke-virtual {p0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mNextButton:Landroid/view/View;

    .line 240
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_progress_text:I

    invoke-virtual {p0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mProgressTextView:Landroid/widget/TextView;

    .line 241
    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_question_card_holder:I

    invoke-virtual {p0, v4}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;

    iput-object v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCardHolder:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    .line 242
    iget-object v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCardHolder:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    new-instance v5, Lcom/mixpanel/android/surveys/SurveyActivity$4;

    invoke-direct {v5, p0}, Lcom/mixpanel/android/surveys/SurveyActivity$4;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v4, v5}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->setOnQuestionAnsweredListener(Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;)V

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private onDestroySurvey()V
    .locals 14

    .prologue
    .line 310
    iget-object v12, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v12, :cond_2

    .line 311
    iget-object v12, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    if-eqz v12, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getSurveyState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v11

    .line 313
    .local v11, "surveyState":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    invoke-virtual {v11}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->getSurvey()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v10

    .line 314
    .local v10, "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/Survey;->getQuestions()Ljava/util/List;

    move-result-object v9

    .line 316
    .local v9, "questionList":Ljava/util/List;, "Ljava/util/List<Lcom/mixpanel/android/mpmetrics/Survey$Question;>;"
    iget-object v12, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v12}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDistinctId()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "answerDistinctId":Ljava/lang/String;
    iget-object v12, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v12}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v12

    invoke-interface {v12, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->withIdentity(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v7

    .line 318
    .local v7, "people":Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
    const-string/jumbo v12, "$responses"

    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/Survey;->getCollectionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->append(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v11}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->getAnswers()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    move-result-object v3

    .line 321
    .local v3, "answers":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mixpanel/android/mpmetrics/Survey$Question;

    .line 322
    .local v8, "question":Lcom/mixpanel/android/mpmetrics/Survey$Question;
    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/Survey$Question;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;->get(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "answerString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 325
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 326
    .local v1, "answerJson":Lorg/json/JSONObject;
    const-string/jumbo v12, "$survey_id"

    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/Survey;->getId()I

    move-result v13

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string/jumbo v12, "$collection_id"

    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/Survey;->getCollectionId()I

    move-result v13

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string/jumbo v12, "$question_id"

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/Survey$Question;->getId()I

    move-result v13

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    const-string/jumbo v12, "$question_type"

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/Survey$Question;->getType()Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 332
    .local v4, "dateFormat":Ljava/text/DateFormat;
    const-string/jumbo v12, "UTC"

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 333
    const-string/jumbo v12, "$time"

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string/jumbo v12, "$value"

    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string/jumbo v12, "$answers"

    invoke-interface {v7, v12, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->append(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v1    # "answerJson":Lorg/json/JSONObject;
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    :catch_0
    move-exception v5

    .line 338
    .local v5, "e":Lorg/json/JSONException;
    const-string/jumbo v12, "MixpanelAPI SurveyActivity"

    const-string/jumbo v13, "Couldn\'t record user\'s answer."

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 343
    .end local v0    # "answerDistinctId":Ljava/lang/String;
    .end local v2    # "answerString":Ljava/lang/String;
    .end local v3    # "answers":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "people":Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
    .end local v8    # "question":Lcom/mixpanel/android/mpmetrics/Survey$Question;
    .end local v9    # "questionList":Ljava/util/List;, "Ljava/util/List<Lcom/mixpanel/android/mpmetrics/Survey$Question;>;"
    .end local v10    # "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    .end local v11    # "surveyState":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    :cond_1
    iget-object v12, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v12}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->flush()V

    .line 346
    :cond_2
    iget v12, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mIntentId:I

    invoke-static {v12}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->releaseDisplayState(I)V

    .line 347
    return-void
.end method

.method private onSaveInstanceStateSurvey(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 359
    const-string/jumbo v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_BEGIN_BUNDLE_KEY"

    iget-boolean v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mSurveyBegun:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    const-string/jumbo v0, "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"

    iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string/jumbo v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_STATE_BUNDLE_KEY"

    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 362
    return-void
.end method

.method private onStartSurvey()V
    .locals 3

    .prologue
    .line 261
    iget-boolean v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mSurveyBegun:Z

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getTestMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->trackSurveyAttempted()V

    .line 268
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "We\'d love your feedback!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 270
    const-string/jumbo v1, "Mind taking a quick survey?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 271
    const-string/jumbo v1, "Sure"

    new-instance v2, Lcom/mixpanel/android/surveys/SurveyActivity$5;

    invoke-direct {v2, p0}, Lcom/mixpanel/android/surveys/SurveyActivity$5;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    const-string/jumbo v1, "No, Thanks"

    new-instance v2, Lcom/mixpanel/android/surveys/SurveyActivity$6;

    invoke-direct {v2, p0}, Lcom/mixpanel/android/surveys/SurveyActivity$6;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mDialog:Landroid/app/AlertDialog;

    .line 287
    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private requestOrientationLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 487
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 488
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->setRequestedOrientation(I)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 491
    .local v0, "currentOrientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 492
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 493
    :cond_2
    if-ne v0, v3, :cond_0

    .line 494
    invoke-virtual {p0, v3}, Lcom/mixpanel/android/surveys/SurveyActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private saveAnswer(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;)V
    .locals 4
    .param p1, "question"    # Lcom/mixpanel/android/mpmetrics/Survey$Question;
    .param p2, "answer"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getSurveyState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v1

    .line 471
    .local v1, "surveyState":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->getAnswers()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    move-result-object v0

    .line 472
    .local v0, "answers":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/Survey$Question;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;->put(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method private setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 478
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 479
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showQuestion(I)V
    .locals 10
    .param p1, "idx"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 432
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getSurveyState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v6

    .line 433
    .local v6, "surveyState":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    invoke-virtual {v6}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->getSurvey()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mixpanel/android/mpmetrics/Survey;->getQuestions()Ljava/util/List;

    move-result-object v5

    .line 434
    .local v5, "questions":Ljava/util/List;, "Ljava/util/List<Lcom/mixpanel/android/mpmetrics/Survey$Question;>;"
    if-eqz p1, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 435
    :cond_0
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mPreviousButton:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 439
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt p1, v7, :cond_2

    .line 440
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 444
    :goto_1
    iget v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    .line 445
    .local v3, "oldQuestion":I
    iput p1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    .line 446
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mixpanel/android/mpmetrics/Survey$Question;

    .line 447
    .local v4, "question":Lcom/mixpanel/android/mpmetrics/Survey$Question;
    invoke-virtual {v6}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->getAnswers()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    move-result-object v1

    .line 448
    .local v1, "answers":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;
    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/Survey$Question;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;->get(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "answerValue":Ljava/lang/String;
    if-ge v3, p1, :cond_3

    .line 451
    :try_start_0
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCardHolder:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    sget-object v8, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->FORWARD:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    invoke-virtual {v7, v4, v0, v8}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->moveTo(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;)V
    :try_end_0
    .catch Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_5

    .line 463
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mProgressTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :goto_3
    return-void

    .line 437
    .end local v0    # "answerValue":Ljava/lang/String;
    .end local v1    # "answers":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;
    .end local v3    # "oldQuestion":I
    .end local v4    # "question":Lcom/mixpanel/android/mpmetrics/Survey$Question;
    :cond_1
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mPreviousButton:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 452
    .restart local v0    # "answerValue":Ljava/lang/String;
    .restart local v1    # "answers":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;
    .restart local v3    # "oldQuestion":I
    .restart local v4    # "question":Lcom/mixpanel/android/mpmetrics/Survey$Question;
    :cond_3
    if-le v3, p1, :cond_4

    .line 453
    :try_start_1
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCardHolder:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    sget-object v8, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->BACKWARD:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    invoke-virtual {v7, v4, v0, v8}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->moveTo(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;)V
    :try_end_1
    .catch Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException;
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    goto :goto_3

    .line 455
    .end local v2    # "e":Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException;
    :cond_4
    :try_start_2
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCardHolder:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-virtual {v7, v4, v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->replaceTo(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 465
    :cond_5
    iget-object v7, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mProgressTextView:Landroid/widget/TextView;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private trackSurveyAttempted()V
    .locals 5

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getSurveyState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v2

    .line 407
    .local v2, "surveyState":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->getSurvey()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v1

    .line 408
    .local v1, "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v3

    iget-object v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDistinctId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->withIdentity(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    .line 409
    .local v0, "people":Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
    const-string/jumbo v3, "$surveys"

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->append(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string/jumbo v3, "$collections"

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->getCollectionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->append(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    return-void
.end method


# virtual methods
.method public completeSurvey(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V

    .line 386
    return-void
.end method

.method public goToNextQuestion(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    .line 382
    return-void
.end method

.method public goToPreviousQuestion(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToPreviousQuestion()V

    .line 378
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->isShowingSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mCurrentQuestion:I

    if-lez v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToPreviousQuestion()V

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->isShowingInApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mIntentId:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->releaseDisplayState(I)V

    .line 372
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.mixpanel.android.surveys.SurveyActivity.INTENT_ID_KEY"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mIntentId:I

    .line 68
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mIntentId:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->claimDisplayState(I)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    .line 69
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    if-nez v0, :cond_1

    .line 70
    const-string/jumbo v0, "MixpanelAPI SurveyActivity"

    const-string/jumbo v1, "SurveyActivity intent received, but nothing was found to show."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .line 76
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->isShowingInApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyActivity;->onCreateInAppNotification(Landroid/os/Bundle;)V

    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->isShowingSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyActivity;->onCreateSurvey(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->isShowingSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->onDestroySurvey()V

    .line 305
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 293
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mDialog:Landroid/app/AlertDialog;

    .line 297
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 353
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->isShowingSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyActivity;->onSaveInstanceStateSurvey(Landroid/os/Bundle;)V

    .line 356
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 255
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDisplayState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SurveyState"

    if-ne v0, v1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->onStartSurvey()V

    .line 258
    :cond_0
    return-void
.end method
