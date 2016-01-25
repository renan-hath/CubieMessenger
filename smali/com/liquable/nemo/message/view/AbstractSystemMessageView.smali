.class public abstract Lcom/liquable/nemo/message/view/AbstractSystemMessageView;
.super Lcom/liquable/nemo/message/view/AbstractMessageView;
.source "AbstractSystemMessageView.java"


# instance fields
.field private final layoutResourceId:I

.field systemText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const v0, 0x7f0300fe

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageView;-><init>(Landroid/content/Context;)V

    .line 23
    iput p2, p0, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->layoutResourceId:I

    .line 24
    return-void
.end method


# virtual methods
.method public initMessageBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->layoutResourceId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->systemText:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->systemText:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 31
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    return-void
.end method

.method updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->systemText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->updateSystemText(Landroid/widget/TextView;Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 37
    return-void
.end method

.method public abstract updateSystemText(Landroid/widget/TextView;Lcom/liquable/nemo/message/model/DomainMessage;)V
.end method
