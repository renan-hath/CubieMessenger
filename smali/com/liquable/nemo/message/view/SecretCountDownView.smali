.class public Lcom/liquable/nemo/message/view/SecretCountDownView;
.super Landroid/widget/TextView;
.source "SecretCountDownView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setTextColor(I)V

    .line 16
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setGravity(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setTextColor(I)V

    .line 22
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setGravity(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setTextColor(I)V

    .line 28
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setGravity(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setVisibility(I)V

    .line 33
    return-void
.end method

.method public update(J)V
    .locals 3
    .param p1, "timeToExpire"    # J

    .prologue
    .line 37
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 38
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setVisibility(I)V

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_0
    long-to-int v1, p1

    div-int/lit16 v0, v1, 0x3e8

    .line 43
    .local v0, "secs":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 46
    const v1, 0x7f020169

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setBackgroundResource(I)V

    .line 52
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 48
    const v1, 0x7f02016a

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setBackgroundResource(I)V

    goto :goto_1

    .line 50
    :cond_2
    const v1, 0x7f020168

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setBackgroundResource(I)V

    goto :goto_1
.end method
