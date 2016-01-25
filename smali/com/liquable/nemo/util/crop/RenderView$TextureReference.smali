.class final Lcom/liquable/nemo/util/crop/RenderView$TextureReference;
.super Ljava/lang/ref/WeakReference;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextureReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/liquable/nemo/util/crop/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field public final activeListEntry:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry",
            "<",
            "Lcom/liquable/nemo/util/crop/RenderView$TextureReference;",
            ">;"
        }
    .end annotation
.end field

.field public final gl:Ljavax/microedition/khronos/opengles/GL11;

.field public final textureId:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/crop/Texture;Ljavax/microedition/khronos/opengles/GL11;Ljava/lang/ref/ReferenceQueue;I)V
    .locals 1
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p3, "referenceQueue"    # Ljava/lang/ref/ReferenceQueue;
    .param p4, "textureId"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 115
    new-instance v0, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;->activeListEntry:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 123
    iput p4, p0, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;->textureId:I

    .line 124
    iput-object p2, p0, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 125
    return-void
.end method
