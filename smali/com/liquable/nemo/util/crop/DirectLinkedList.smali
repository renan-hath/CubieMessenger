.class public final Lcom/liquable/nemo/util/crop/DirectLinkedList;
.super Ljava/lang/Object;
.source "DirectLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mTail:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList;, "Lcom/liquable/nemo/util/crop/DirectLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList;, "Lcom/liquable/nemo/util/crop/DirectLinkedList<TE;>;"
    .local p1, "entry":Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;, "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry<TE;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mTail:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 40
    .local v0, "tail":Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;, "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry<TE;>;"
    if-eqz v0, :cond_0

    .line 41
    iput-object p1, v0, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->next:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 42
    iput-object v0, p1, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->previous:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 46
    :goto_0
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mTail:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->inserted:Z

    .line 48
    iget v1, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    .line 49
    return-void

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mHead:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList;, "Lcom/liquable/nemo/util/crop/DirectLinkedList<TE;>;"
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mHead:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 53
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mTail:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    .line 55
    return-void
.end method

.method public getHead()Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList;, "Lcom/liquable/nemo/util/crop/DirectLinkedList<TE;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mHead:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    return-object v0
.end method

.method public getTail()Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList;, "Lcom/liquable/nemo/util/crop/DirectLinkedList<TE;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mTail:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList;, "Lcom/liquable/nemo/util/crop/DirectLinkedList<TE;>;"
    iget v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;)Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;)",
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList;, "Lcom/liquable/nemo/util/crop/DirectLinkedList<TE;>;"
    .local p1, "entry":Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;, "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry<TE;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 71
    iget-object v1, p1, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->previous:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 72
    .local v1, "previous":Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;, "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry<TE;>;"
    iget-object v0, p1, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->next:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 73
    .local v0, "next":Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;, "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry<TE;>;"
    if-eqz v0, :cond_1

    .line 74
    iput-object v1, v0, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->previous:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 75
    iput-object v2, p1, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->next:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 79
    :goto_0
    if-eqz v1, :cond_2

    .line 80
    iput-object v0, v1, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->next:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 81
    iput-object v2, p1, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->previous:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 85
    :goto_1
    iput-boolean v3, p1, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->inserted:Z

    .line 86
    iget v2, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    .line 87
    iget v2, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    if-gez v2, :cond_0

    .line 88
    iput v3, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    .line 90
    :cond_0
    return-object v0

    .line 77
    :cond_1
    iput-object v1, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mTail:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    goto :goto_0

    .line 83
    :cond_2
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mHead:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList;, "Lcom/liquable/nemo/util/crop/DirectLinkedList<TE;>;"
    iget v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList;->mSize:I

    return v0
.end method
