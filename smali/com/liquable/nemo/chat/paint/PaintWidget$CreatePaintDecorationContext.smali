.class public Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreatePaintDecorationContext"
.end annotation


# instance fields
.field private final property:Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V
    .locals 0
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;->property:Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    .line 46
    return-void
.end method


# virtual methods
.method public getProperty()Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;->property:Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    return-object v0
.end method
