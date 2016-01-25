.class public Lcom/liquable/nemo/targetedintent/TargetIntent;
.super Ljava/lang/Object;
.source "TargetIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/targetedintent/TargetIntent$Type;
    }
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final type:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/TargetIntent;->packageName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/liquable/nemo/targetedintent/TargetIntent;->type:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    .line 29
    return-void
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/TargetIntent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/liquable/nemo/targetedintent/TargetIntent$Type;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/TargetIntent;->type:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    return-object v0
.end method
