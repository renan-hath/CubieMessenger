.class public Lcom/liquable/nemo/message/view/OpenApiAppMessageView;
.super Ljava/lang/Object;
.source "OpenApiAppMessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;
    }
.end annotation


# instance fields
.field private button:Landroid/view/View;

.field private buttonImage:Landroid/widget/ImageView;

.field private buttonText:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private imageView:Landroid/widget/ImageView;

.field private linkView:Landroid/widget/TextView;

.field private separator1:Landroid/view/View;

.field private separator2:Landroid/view/View;

.field private separator3:Landroid/view/View;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 107
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->openAppOrGoogePlay(Landroid/content/Context;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static openAppOrGoogePlay(Landroid/content/Context;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionType"    # Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;
    .param p2, "executeUrl"    # Ljava/lang/String;
    .param p3, "googlePlayUrl"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v0, "executeIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/liquable/nemo/util/Contexts;->resolvePackageNameForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    const/high16 v3, 0x30000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->open_app:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    invoke-interface {v3, p4, p1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnOpenApiAppMessage(Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;)V

    .line 90
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v1, "googlePlayIntent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->open_store:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    invoke-interface {v3, p4, p1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnOpenApiAppMessage(Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;)V

    goto :goto_0

    .line 85
    .end local v1    # "googlePlayIntent":Landroid/content/Intent;
    :cond_1
    const v3, 0x7f0d01c2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "Android"

    aput-object v6, v4, v5

    .line 86
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {p0, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->not_available:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    invoke-interface {v3, p4, p1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnOpenApiAppMessage(Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;)V

    goto :goto_0
.end method


# virtual methods
.method public init(ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "layoutResId"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x2

    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ef

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    const v0, 0x7f08027c

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->textView:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->textView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    const v0, 0x7f08027e

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->imageView:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f080280

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->linkView:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->linkView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 116
    const v0, 0x7f08001e

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->button:Landroid/view/View;

    .line 117
    const v0, 0x7f080283

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->buttonText:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->buttonText:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    const v0, 0x7f080282

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->buttonImage:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f08027d

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->separator1:Landroid/view/View;

    .line 121
    const v0, 0x7f08027f

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->separator2:Landroid/view/View;

    .line 122
    const v0, 0x7f080281

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->separator3:Landroid/view/View;

    .line 123
    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/OpenApiAppMessage;)V
    .locals 12
    .param p1, "message"    # Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    .prologue
    .line 126
    const/4 v4, 0x4

    new-array v1, v4, [Z

    fill-array-data v1, :array_0

    .line 128
    .local v1, "parts":[Z
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->textView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->imageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :goto_1
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->hasAppLink()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 152
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->linkView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    new-instance v0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getLinkUrlForAndroid()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getLinkGooglePlayUrl()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v0, "googlePlayLinkSpan":Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getLinkText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 157
    .local v3, "spannableString":Landroid/text/SpannableString;
    const/4 v4, 0x0

    .line 159
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 157
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 161
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->linkView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 167
    .end local v0    # "googlePlayLinkSpan":Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    :goto_2
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->hasAppButton()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 168
    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 169
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->button:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->buttonText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->button:Landroid/view/View;

    new-instance v5, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$1;

    invoke-direct {v5, p0, p1}, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$1;-><init>(Lcom/liquable/nemo/message/view/OpenApiAppMessageView;Lcom/liquable/nemo/message/model/OpenApiAppMessage;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getButtonImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 189
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->buttonImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :goto_3
    iget-object v5, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->separator1:Landroid/view/View;

    const/4 v4, 0x0

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    aget-boolean v4, v1, v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    aget-boolean v4, v1, v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_7

    :cond_0
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v5, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->separator2:Landroid/view/View;

    const/4 v4, 0x1

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    aget-boolean v4, v1, v4

    if-nez v4, :cond_1

    const/4 v4, 0x3

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_8

    :cond_1
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v5, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->separator3:Landroid/view/View;

    const/4 v4, 0x2

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_9

    const/4 v4, 0x3

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    return-void

    .line 131
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 132
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->textView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    .local v2, "spannable":Landroid/text/Spannable;
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 135
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    .end local v2    # "spannable":Landroid/text/Spannable;
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 142
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->imageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v5, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_IMAGE:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/16 v8, 0xc0

    const/16 v9, 0xc0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIZ)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto/16 :goto_1

    .line 164
    :cond_4
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->linkView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 191
    :cond_5
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->buttonImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v5, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->buttonImage:Landroid/widget/ImageView;

    new-instance v6, Lcom/liquable/nemo/util/RoundedLoadableImage;

    .line 193
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getButtonImageUrl()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_IMAGE:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/16 v9, 0x28

    const/16 v10, 0x28

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIZ)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v7

    const/16 v8, 0x28

    const/16 v9, 0x28

    const/4 v10, 0x5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/liquable/nemo/util/RoundedLoadableImage;-><init>(Lcom/liquable/nemo/util/LoadableImage;III)V

    .line 192
    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto/16 :goto_3

    .line 200
    :cond_6
    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->button:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 203
    :cond_7
    const/16 v4, 0x8

    goto/16 :goto_4

    .line 205
    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_5

    .line 206
    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_6

    .line 126
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
