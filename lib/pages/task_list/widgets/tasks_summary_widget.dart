import 'package:flutter/material.dart';
import 'package:todo_app/models/task_group.dart';

class TasksSummaryWidget extends StatelessWidget {
  const TasksSummaryWidget({
    super.key, required this.taskGroupWithCount,
  });

  final TaskGroupWithCounts taskGroupWithCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 35,
            height: 35,
            child: CircularProgressIndicator(
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation(Color(taskGroupWithCount.taskGroup.color)),
              backgroundColor: Colors.grey,
              value: 0.5,
            ),
          ),
          const SizedBox(
            width: 20,
          ),

          /// Texts
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tasks',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  '${taskGroupWithCount.completedTasks}/${taskGroupWithCount.totalTasks} tasks',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
