.class public final Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
.super Ljava/lang/Object;
.source "DirectLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/DirectLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
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
.field public inserted:Z

.field public next:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field public previous:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;, "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->previous:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 22
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->next:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->inserted:Z

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->value:Ljava/lang/Object;

    .line 27
    return-void
.end method
