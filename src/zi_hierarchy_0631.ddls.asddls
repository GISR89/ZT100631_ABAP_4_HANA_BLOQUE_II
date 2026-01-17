define hierarchy ZI_HIERARCHY_0631
  as parent child hierarchy(
    source ZI_HIERARC_0631
    child to parent association _Manager
    start where
      Manager is initial
    siblings order by
      Employee
    multiple parents allowed
  )
{
  key Employee,
      Manager,
      Name,
      $node.parent_id             as ParentId,
      $node.hierarchy_parent_rank as ParentRank,
      $node.node_id               as NodeId,
      $node.hierarchy_level       as HLevel,
      $node.hierarchy_tree_size   as TreeSize,
      $node.hierarchy_rank        as Hrank
}
