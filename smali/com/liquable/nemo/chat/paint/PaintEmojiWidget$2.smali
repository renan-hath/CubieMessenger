.class Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$2;
.super Ljava/lang/Object;
.source "PaintEmojiWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/OnPropertyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
        "<",
        "Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$2;->this$0:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProperty(Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;)V
    .locals 0
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    .prologue
    .line 26
    return-void
.end method

.method public bridge synthetic onProperty(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$2;->onProperty(Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;)V

    return-void
.end method
