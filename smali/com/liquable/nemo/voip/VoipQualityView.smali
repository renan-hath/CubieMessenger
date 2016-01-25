.class public Lcom/liquable/nemo/voip/VoipQualityView;
.super Landroid/widget/LinearLayout;
.source "VoipQualityView.java"


# instance fields
.field private final imageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/voip/VoipQualityView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/voip/VoipQualityView;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/VoipQualityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030176

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    const v1, 0x7f080353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v2, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v2, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    const v1, 0x7f080355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v2, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    const v1, 0x7f080356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v2, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    const v1, 0x7f080357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method


# virtual methods
.method public setQuality(Lcom/liquable/nemo/voip/session/VoipQualityLevel;)V
    .locals 3
    .param p1, "qualityLevel"    # Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    .prologue
    .line 41
    sget-object v1, Lcom/liquable/nemo/voip/VoipQualityView$1;->$SwitchMap$com$liquable$nemo$voip$session$VoipQualityLevel:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02055e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 44
    .end local v0    # "i":I
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02055f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 50
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020561

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 55
    .end local v0    # "i":I
    :pswitch_2
    iget-object v1, p0, Lcom/liquable/nemo/voip/VoipQualityView;->imageViews:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020560

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 64
    .restart local v0    # "i":I
    :cond_1
    return-void

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
