.class public abstract Lcom/aviary/android/feather/headless/moa/MoaParameter;
.super Ljava/lang/Object;
.source "MoaParameter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field type:Ljava/lang/String;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/aviary/android/feather/headless/moa/MoaParameter;, "Lcom/aviary/android/feather/headless/moa/MoaParameter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract encode()Ljava/lang/Object;
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/aviary/android/feather/headless/moa/MoaParameter;, "Lcom/aviary/android/feather/headless/moa/MoaParameter<TT;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaParameter;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/aviary/android/feather/headless/moa/MoaParameter;, "Lcom/aviary/android/feather/headless/moa/MoaParameter<TT;>;"
    .local p1, "newvalue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/MoaParameter;->value:Ljava/lang/Object;

    .line 67
    return-void
.end method
