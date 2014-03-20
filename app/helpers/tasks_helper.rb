module TasksHelper
  def cache_key_for_tasks
    count          = Task.count
    max_updated_at = Task.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "tasks/all-#{count}-#{max_updated_at}"
  end
end