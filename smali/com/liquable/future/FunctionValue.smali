.class public final Lcom/liquable/future/FunctionValue;
.super Ljava/lang/Object;
.source "FunctionValue.java"

# interfaces
.implements Lcom/liquable/future/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liquable/future/Function",
        "<",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/liquable/future/FunctionValue;, "Lcom/liquable/future/FunctionValue<TR;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liquable/future/FunctionValue;->r:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/liquable/future/FunctionValue;, "Lcom/liquable/future/FunctionValue<TR;>;"
    iget-object v0, p0, Lcom/liquable/future/FunctionValue;->r:Ljava/lang/Object;

    return-object v0
.end method
