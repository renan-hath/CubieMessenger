.class public Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
.super Ljava/lang/Object;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/widget/SeparatedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field iconResource:I

.field private final onCloseClickListener:Landroid/view/View$OnClickListener;

.field private final tag:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconResource"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "onCloseClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->title:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->iconResource:I

    .line 32
    iput-object p3, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->tag:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->onCloseClickListener:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->onCloseClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 45
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 48
    .local v0, "other":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    iget-object v3, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->tag:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 49
    iget-object v3, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->tag:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->tag:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->iconResource:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0x1f

    .line 73
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 74
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->tag:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 75
    return v1

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method
