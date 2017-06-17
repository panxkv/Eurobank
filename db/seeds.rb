User.create(email: 'recruter@eurobank.com', password: 'password')

Category.create(name: "Full Time")
Category.create(name: "PartTime")
Category.create(name: "Freelancing")
Category.create(name: "Consulting")

job_list = [
  [ "IT Specialist", "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt", 2],
  [ "Statistic", "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt", 1],
  [ "Consultatnt", "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt", 2 ],
  [ "Technic", "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt", 3 ]
]

job_list.each do |name, description, id|
  Job.create( title: name, description: description, category_id: id)
end
